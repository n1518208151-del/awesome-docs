# Benchmark 综述

本页约定性能数据的记录方式。Benchmark 不只记录推理耗时，也要记录影响复现的系统资源，例如 OS:CMM、卡端 DDR、固件版本和驱动版本。

## 数据记录字段

不同任务关注的指标不同，关键字段应拆开记录，避免只用"测试条件"一列概括。

### CNN / Transformer

| 字段 | 说明 |
| --- | --- |
| 模型 | 模型名称与来源 |
| 输入分辨率 | 如 640x640、224x224 |
| 芯片 | 具体芯片型号 |
| 量化 | 如 INT8、FP16 |
| 固件/驱动 | 主控开发板记录 AXP 版本；算力卡记录 AXCL 驱动版本 |
| OS:CMM / DDR | 主控开发板记录 OS:CMM；算力卡记录卡端 DDR |
| 推理耗时 | 单次推理耗时，单位 ms |
| 吞吐 | FPS 或实测吞吐 |

### LLM / VLM

| 字段 | 说明 |
| --- | --- |
| 模型 | 模型名称与来源 |
| 量化 | 如 W8A16、INT4 |
| 芯片 | 具体芯片型号 |
| OS:CMM / DDR | 主控开发板记录 OS:CMM；算力卡记录卡端 DDR |
| 上下文长度 | Prefill / Decode 对应上下文长度 |
| 并发路数 | 单路或多路并发 |
| Prefill | Prefill 阶段速度，单位 tokens/s |
| Decode | Decode 阶段速度，单位 tokens/s |
| TTFT | 首字延迟，单位 ms |

## 统计说明

- CNN / Transformer 推理耗时：默认只统计 NPU 推理，不含图片解码和 NMS 后处理；如包含前后处理需在备注说明。
- 吞吐 (FPS)：可按 `1000 / 推理耗时(ms)` 估算，也可用连续送帧实测。
- LLM / VLM：必须同时记录上下文长度、并发路数、OS:CMM 或卡端 DDR，否则数据无法复现。
- 功耗：如有标注，需注明测试点（整板 / 芯片核心供电 / 算力卡）。

## 跑分工具

板端模型 latency 可使用 `ax_run_model` 测量。完整 Benchmark 工具、算力卡跑分工具、LLM/VLM 跑分脚本仍在补充中，相关说明见 [基础软件环境](../05_software/base_software.md) 的"跑分工具使用"小节。

## AX650 Benchmark 环境检查

在 AX650 上执行 Benchmark 前，应记录 DDR、NPU 时钟以及 NPU 访问 DDR 的带宽状态。频率或带宽限制不同，会直接影响推理耗时和吞吐，导致不同测试结果无法直接比较。

以下命令均在 AX650 板端以 `root` 用户执行。

### 查询 DDR 和 NPU 时钟

使用 `ax_clk` 查询当前各模块的时钟：

```bash
ax_clk
```

示例输出：

```text
root@ax650:~# ax_clk

Current Clk Freqs:
MOD             FREQ
-----------------------------------------------
DDR             4266
TDP             700000000
GDC             700000000
VPP             700000000
VGP             700000000
DPU0            624000000
DPU1            624000000
DPU_LITE        624000000
VENC            624000000
JENC            624000000
VDEC            624000000
JDEC            624000000
IFE             624000000
ITP             700000000
NPU             800000000
VDSP            800000000
ACLK_TOP_NN     1600000000
ACLK_TOP        800000000
ACLK_TOP1       800000000
ACLK_TOP2       800000000
ACLK_TOP3       800000000
-----------------------------------------------
```

只关注 DDR 和 NPU 时，可以筛选对应行：

```bash
ax_clk | awk '$1 == "DDR" || $1 == "NPU"'
```

上述示例中：

- `DDR 4266` 是 `ax_clk` 输出的 DDR 速率档位，记录 Benchmark 条件时建议保留原始值；
- `NPU 800000000` 表示 NPU 当前时钟为 800 MHz。

### 查询 NPU DDR 实时带宽

`ax_perf_monitor.ko` 用于统计各总线主设备的 DDR 读写带宽。该模块默认可能未加载，先检查模块状态：

```bash
lsmod | grep -w ax_perf_monitor
```

如果没有输出，则加载模块：

```bash
insmod /soc/ko/ax_perf_monitor.ko
```

加载成功后查询实时带宽：

```bash
cat /proc/ax_proc/bw/bw
```

空闲状态示例：

```text
root@ax650:~# cat /proc/ax_proc/bw/bw
All BW:0MB(----)
cpu/common/debug BW:155KB(100%), RD_BW: 139KB(89%), WR_BW: 16KB(10%)
isp/vdec BW:0KB(0%), RD_BW: 0KB(0%), WR_BW: 0KB(0%)
npu BW:0KB(0%), RD_BW: 0KB(0%), WR_BW: 0KB(0%)
venc/flash BW:0KB(0%), RD_BW: 0KB(0%), WR_BW: 0KB(0%)
vdsp/mm/pipe BW:0KB(0%), RD_BW: 0KB(0%), WR_BW: 0KB(0%)
root@ax650:~#
```

其中 `npu` 行的字段含义如下：

| 字段 | 含义 |
| --- | --- |
| `BW` | NPU 访问 DDR 的总带宽 |
| `RD_BW` | NPU 从 DDR 读取数据的带宽 |
| `WR_BW` | NPU 向 DDR 写入数据的带宽 |

该节点显示的是采样时刻的实际带宽，不是带宽限制值。空闲时显示 `0KB` 属于正常现象；测试时应在另一个终端持续运行 NPU 负载，再读取该节点。

如果还需要显示实际总带宽占理论 DDR 带宽的百分比，可以在确认板卡 DDR 物理位宽后，通过 `freq` 和 `width` 参数加载模块。例如 DDR 速率为 4266、物理位宽为 64 bit 时：

```bash
insmod /soc/ko/ax_perf_monitor.ko freq=4266 width=64
```

`freq` 使用 `ax_clk` 查询到的 DDR 值；`width` 由硬件设计决定，不能直接套用示例值。模块已经加载时不要重复执行 `insmod`，如需更换参数，应先停止相关监控和测试任务，再卸载并重新加载模块。

### 查询 NPU DDR 带宽限制

AX650 分别提供 NPU `interleave` 端口的读、写带宽限制节点：

| 节点 | 含义 |
| --- | --- |
| `/proc/ax_proc/bw_limit/npu_interl/limiter_val_rd` | NPU 从 DDR 读取数据的带宽上限 |
| `/proc/ax_proc/bw_limit/npu_interl/limiter_val_wr` | NPU 向 DDR 写入数据的带宽上限 |

查询当前配置：

```bash
cat /proc/ax_proc/bw_limit/npu_interl/limiter_val_rd
cat /proc/ax_proc/bw_limit/npu_interl/limiter_val_wr
```

示例输出：

```text
0 MB
0 MB
```

这些节点显示的是驱动保存的**带宽限制配置值**，不是 NPU 当前实际带宽。数值语义上按 MB/s 理解；`0 MB` 表示未启用带宽限制，而不是将 NPU 带宽限制为 0。

### 修改 NPU DDR 带宽限制

修改前先记录原始值：

```bash
cat /proc/ax_proc/bw_limit/npu_interl/limiter_val_rd
cat /proc/ax_proc/bw_limit/npu_interl/limiter_val_wr
```

通过 `echo` 修改读、写带宽上限。以下命令将读带宽限制为 6000 MB/s、写带宽限制为 3000 MB/s，数值仅用于演示命令格式：

```bash
echo 6000 > /proc/ax_proc/bw_limit/npu_interl/limiter_val_rd
echo 3000 > /proc/ax_proc/bw_limit/npu_interl/limiter_val_wr
```

修改后再次查询，确认配置已生效：

```bash
cat /proc/ax_proc/bw_limit/npu_interl/limiter_val_rd
cat /proc/ax_proc/bw_limit/npu_interl/limiter_val_wr
```

```{warning}
减小带宽上限会影响 NPU 性能。当前驱动的读、写限制共用一个 limiter enable，向任一节点写入 `0` 都会关闭整个 `npu_interl` limiter，不能用这种方式单独关闭一个方向。
```

### 恢复 NPU DDR 带宽限制

Benchmark 完成后，将修改前记录的原始值重新写入对应节点。如果原始值为 `0 MB` 和 `0 MB`，执行：

```bash
echo 0 > /proc/ax_proc/bw_limit/npu_interl/limiter_val_rd
echo 0 > /proc/ax_proc/bw_limit/npu_interl/limiter_val_wr
```

恢复后再次检查：

```bash
cat /proc/ax_proc/bw_limit/npu_interl/limiter_val_rd
cat /proc/ax_proc/bw_limit/npu_interl/limiter_val_wr
```

如果原始值为：

```text
0 MB
0 MB
```

恢复后也应得到相同结果，表示 NPU DDR 带宽限制已关闭。如果原始值不是 `0`，则将实际记录的原始读写值分别写回对应节点。

### Benchmark 建议记录项

每次测试至少记录以下信息：

```text
DDR CLK：
NPU CLK：
NPU limiter RD：
NPU limiter WR：
NPU 实际 RD_BW：
NPU 实际 WR_BW：
固件/驱动版本：
模型及并发配置：
```
