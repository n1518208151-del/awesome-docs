# 快速开始

- 指引用户从拿到开发板第一个 AI 示例的基本路径。不同芯片和板卡的固件、接口、驱动和示例包可能不同，具体操作以对应板卡资料为准；
- 算力卡用户，建议直接参考 [AXCL 文档](https://axcl-docs.readthedocs.io/zh-cn/latest/) 更合适.

## 适用范围

| 产品 / 形态 | 当前资料状态 | 说明 |
| --- | --- | --- |
| AX8850N / AX8850N 主控开发板 | 已有示例 | 适用于 AX650N DEMO Board |
| AX8850 / AX8850N 算力卡 | 已有示例 | 需先安装 AXCL 驱动，再按算力卡示例运行 |
| AX8910 | 待补充 | 适用 AX8910 DEMO Board |

### 通用检查流程

- 确认硬件型号和产品形态（主控开发板 / 算力卡）；
- 查阅对应硬件页面，确认供电、串口、网络和固件资料是否齐全；
- 查询固件版本（即 axp 版本），确认与文档中记录的验证版本一致或兼容；
- 确认网络连通，准备模型、示例仓库和运行环境。

## SDK获取方式

### 社区版本

- [AX8850](https://modelscope.cn/models/AXERA-TECH/AX650-Community-Hub/tree/master/sdk)
- AX8910(待完善) 

### 商用版本

- 正式商务对接的客户，建议找对应的 FAE 获取最新的 SDK 版本更佳。

## 首次登录

- **主控开发板**：通常通过串口确认 Board IP 之后再使用 SSH 登录，串口参数和默认账号以板卡资料为准（默认 root@123456）；
- **算力卡**：在宿主机安装 AXCL 驱动后操作，驱动安装见 [AXCL 文档](https://axcl-docs.readthedocs.io/zh-cn/latest/)。

### 硬件链接

（待补充开发板和连接示意图）

### 串口登录

（待补充如何获取 IP 地址的方式和图）

### SSH 登录

（待补充如何使用 MobaXterm 通过 ssh 登录上开发板）

## 运行示例

### 获取当前BSP版本号

（待补充）

### 运行基础AI示例

- sample_npu_classification
（待补充）

- sample_npu_yolov5s
（待补充）
