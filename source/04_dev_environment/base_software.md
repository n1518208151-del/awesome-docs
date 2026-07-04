# 基础软件环境

- 本页包含SDK获取途径、系统相关、NPU 基础操作。不同芯片、开发板、模组和算力卡的固件、驱动和内存划分可能不同；
- 已验证内容会在表格中标注，未补齐的产品保留待补充位置。

## SDK获取方式

### 社区版本

- [AX8850](https://modelscope.cn/models/AXERA-TECH/AX650-Community-Hub/tree/master/sdk)
- AX8910(待完善) 

### 商用版本

- 正式商务对接的客户，建议找对应的 FAE 获取最新的 SDK 版本更佳。

## 系统相关

### 版本查询

固件版本指烧写到设备上的系统镜像或 AXP 版本。不同产品的版本查询命令可能不同，当前已验证命令如下：

| 产品 / 形态 | 查询命令 | 当前状态 |
| --- | --- | --- |
| AX8850N / AX8850N 主控开发板 | `cat /proc/ax_proc/version` | 已验证 |
| AX8850 / AX8850N 算力卡 | 待补充 | 需结合 AXCL 工具补充 |
| 终端计算智能视觉芯片开发板 / 模组 | 待补充 | 需按具体 SDK 补充 |
| 其他生态板卡 | 待补充 | 由板卡厂家补充 |

AX8850N / AX8850N 主控开发板示例：

```bash
root@ax650:~# cat /proc/ax_proc/version
Ax_Version V3.6.2_20250731140456
root@ax650:~#
```

当前已验证版本：

| 名称 | 芯片 | AXP 版本 | OS:CMM | 状态 |
| --- | --- | --- | --- | --- |
| AX8850N DEMO Board | AX8850N / AX8850N | AX8850N_emmc_ubuntu_rootfs_desktop_V3.6.2_20250731140456_NO26076_sdk | 6 : 10 | 已验证 |
| M4N-Dock (爱芯派Pro) | AX8850 | AX8850N_pipro_box_ubuntu_rootfs_desktop_V3.6.2_20250603154858_NO4873_sdk.axp | 4 : 4 | 已验证 |
| AI Pyramid Pro | AX8850 | 待补充 | 待补充 | 待补充 |
| LLM8850 | AX8850 | 待补充 | 不适用 | 待补充 |
| 蜜连科技开发套件 | AX8850N | 待补充 | 待补充 | 待补充 |
| 以悦科技 AIBOX | AX8850N | 待补充 | 待补充 | 待补充 |
| 鲸算智能 AIBOX | AX8850 | 待补充 | 待补充 | 待补充 |
| Radxa AX-M1 | AX8850 | 待补充 | 不适用 | 待补充 |

对应的 AXP 版本可以通过以下方式获取：

- 签约客户请联系对应 FAE 获取；
- 社区用户请从 [BoardImages](https://hf-mirror.com/AXERA-TECH/BoardImages) 获取；
- 生态板卡请优先查看对应厂商页面和购买资料。

### 带宽查询

带宽数据用于确认 DDR / AXI / PCIE 等系统资源是否处于预期状态。不同产品的工具和测试点不同。

| 产品 / 形态 | 检查项 | 命令 | 说明 |
| --- | --- | --- | --- |
| AX8850N / AX8850N 主控开发板 | DDR / AXI 带宽 | 待补充 | 记录读写带宽和测试条件 |
| AX8850 / AX8850N 算力卡 | PCIE 带宽 | 待补充 | 记录宿主机、PCIE 版本和链路宽度 |
| 终端计算智能视觉芯片开发板 / 模组 | DDR / AXI 带宽 | 待补充 | 需按具体 SDK 工具补充 |

### CMM 说明

CMM 用于划分系统内存与 NPU 可用内存。该项主要适用于主控开发板；算力卡通常以卡端 DDR 容量和 AXCL 运行环境为准。

| 产品 / 形态 | OS:CMM | 说明 |
| --- | --- | --- |
| AX8850N DEMO Board | 6 : 10 | OS 侧 6GB，CMM 侧 10GB |
| M4N-Dock (爱芯派Pro) | 4 : 4 | OS 侧 4GB，CMM 侧 4GB |
| 其他主控开发板 | 待补充 | 需按固件版本记录 |
| 算力卡 | 不适用 | 记录卡端 DDR 容量和驱动版本 |

如需运行大模型或多路并发任务，优先确认 CMM 或卡端 DDR 容量是否满足模型加载和推理需要。

### 网络确认

确认设备能访问互联网：

```bash
ping www.baidu.com -c 3
```

## NPU 基础操作

### 算力查询

算力查询用于确认 NPU 设备是否被系统识别，以及当前可用的 NPU 资源。不同产品的查询方式不同：

| 产品 / 形态 | 查询方式 | 状态 |
| --- | --- | --- |
| AX8850N / AX8850N 主控开发板 | 待补充 | 查询板端 NPU 资源 |
| AX8850 / AX8850N 算力卡 | 待补充 | 通过 AXCL 查询卡端 NPU 资源 |
| 终端计算智能视觉芯片开发板 / 模组 | 待补充 | 需按具体 SDK 补充 |

### 跑分工具使用

跑分用于确认模型、运行环境和驱动是否正常。当前只保留已确认工具，其余工具先占位，避免误导用户。

| 场景 | 工具 | 用途 | 状态 |
| --- | --- | --- | --- |
| 板上模型 latency 测试 | `ax_run_model` | 测试单个 `.axmodel` 的推理耗时 | 已确认 |
| CNN / Transformer 完整 Benchmark | 待补充 | 统计推理耗时、吞吐、功耗等 | 待补充 |
| LLM / VLM Benchmark | 待补充 | 统计 Prefill、Decode、TTFT、显存占用 | 待补充 |
| 算力卡 Benchmark | 待补充 | 统计 AXCL 场景下的单卡 / 多卡性能 | 待补充 |

`ax_run_model` 使用示例待补充，建议后续至少包含：模型路径、输入 shape、循环次数、是否包含预处理、输出 latency 字段说明。

## 主控开发板环境准备

以下命令为 AX8850N / AX8850N 相关主控开发板上的已验证示例。其他主控开发板可参考，但需要按对应 SDK 和系统版本调整。

### 安装基础依赖

```bash
apt-get update
yes | apt-get install rsync python3-dev python3-setuptools unzip python3-pip
yes | apt-get install libsndfile1-dev libmecab-dev
yes | apt-get install libass-dev libfdk-aac-dev libmp3lame-dev libopus-dev libvpx-dev libx264-dev libx265-dev libssl-dev libgl1-mesa-glx
```

### 安装 Python 依赖

```bash
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple numpy opencv-python transformers ml_dtypes tqdm jinja2 torch torchvision onnxruntime
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple ultralytics diffusers peft protobuf librosa kaldi_native_fbank sentencepiece
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple zhconv cn2an pypinyin jieba g2p_en nltk
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple gradio
```

### 安装 huggingface_hub

```bash
cd /root/
pip3 install huggingface_hub -i https://pypi.tuna.tsinghua.edu.cn/simple
export HF_ENDPOINT=https://hf-mirror.com
```

### 安装 modelscope

```bash
pip3 install modelscope -i https://pypi.tuna.tsinghua.edu.cn/simple
```

### 安装 PyAXEngine

PyAXEngine 是 NPU Python API，接口风格兼容 ONNXRuntime Python API，便于上板验证。源码仓库见 [pyaxengine](https://github.com/AXERA-TECH/pyaxengine)。

从 GitHub 下载：

```bash
wget https://github.com/AXERA-TECH/pyaxengine/releases/download/0.1.3.rc3/axengine-0.1.3-py3-none-any.whl
```

或从 Huggingface 镜像站下载：

```bash
hf download AXERA-TECH/PyAXEngine --local-dir PyAXEngine
cp PyAXEngine/axengine-0.1.3-py3-none-any.whl ./
```

安装：

```bash
pip3 install axengine-0.1.3-py3-none-any.whl
```

## 算力卡环境准备

以下命令为 AX8850 / AX8850N 算力卡的基础环境示例。实际驱动版本、安装包和宿主机架构以 [AXCL 文档](https://axcl-docs.readthedocs.io/zh-cn/latest/) 为准。

### AXCL 驱动安装

算力卡需要提前配置 AXCL 驱动，详细安装流程参考 [AXCL 文档](https://axcl-docs.readthedocs.io/zh-cn/latest/)。

### 网络确认

```bash
ping www.baidu.com -c 3
```

### 安装基础依赖

```bash
apt-get update
yes | apt-get install rsync python3-dev python3-setuptools unzip python3-pip
yes | apt-get install libsndfile1-dev libmecab-dev
yes | apt-get install libass-dev libfdk-aac-dev libmp3lame-dev libopus-dev libvpx-dev libx264-dev libx265-dev libssl-dev libgl1-mesa-glx
```

### 安装 Python 依赖

```bash
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple numpy opencv-python transformers ml_dtypes tqdm jinja2 torch torchvision onnxruntime
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple ultralytics diffusers peft protobuf librosa kaldi_native_fbank sentencepiece
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple zhconv cn2an pypinyin jieba g2p_en nltk
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple gradio
```

### 安装 huggingface_hub

```bash
cd /root/
pip3 install huggingface_hub -i https://pypi.tuna.tsinghua.edu.cn/simple
export HF_ENDPOINT=https://hf-mirror.com
```

### 安装 PyAXEngine

从 GitHub 下载：

```bash
wget https://github.com/AXERA-TECH/pyaxengine/releases/download/0.1.3.rc1/axengine-0.1.3-py3-none-any.whl
```

或从 Huggingface 镜像站下载：

```bash
hf download AXERA-TECH/PyAXEngine --local-dir PyAXEngine
cp PyAXEngine/axengine-0.1.3-py3-none-any.whl ./
```

安装：

```bash
pip3 install axengine-0.1.3-py3-none-any.whl
```
