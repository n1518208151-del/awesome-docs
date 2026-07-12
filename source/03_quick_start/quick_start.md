# 快速开始

- 指引用户从拿到开发板第一个 AI 示例的基本路径。不同芯片和板卡的固件、接口、驱动和示例包可能不同，具体操作以对应板卡资料为准；
- 算力卡用户，建议直接参考 [AXCL 文档](https://axcl-docs.readthedocs.io/zh-cn/latest/) 更合适.

## 适用范围

| 产品 / 形态 | 当前资料状态 | 说明 |
| --- | --- | --- |
| AX8850 / AX8850N 主控开发板 | 已有示例 | 适用于 AX650N DEMO Board |
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

#### AX8850 / AX8850N 主控开发板：

第一次拿到开发板按照如下方式连接：
![开发板连接图](../_static/03_quick_start/ax8850n_board_connect.jpg)
系统默认为自动获取IP，将板卡通过网线连接到路由器，由路由器分配IP地址。

#### AX8910主控开发板：

(待补充)

### 串口登录

打开终端工具，例如：MobaXterm，添加session，选择Serial，选择对应的串口，波特率为115200，打开串口：
![串口链接图](../_static/03_quick_start/mobax_01.png)
在终端中执行`ifconfig`命令，查看板卡IP地址：
![串口链接图](../_static/03_quick_start/mobax_02.jpg)
例如上图中，` 192.168.100.225`为开发板IP地址。

### SSH 登录


打开终端工具，添加session，选择SSH，Remote host地址填写串口中查询到的IP，User name填写root，选择OK：
![SSH图](../_static/03_quick_start/mobax_03.jpg)
在弹出的窗口选择“Accept”：
![SSH图](../_static/03_quick_start/mobax_04.jpg)
然后输入密码，默认密码为`123456`：
![SSH图](../_static/03_quick_start/mobax_05.jpg)
在弹出的窗口选择“Yes”：
![SSH图](../_static/03_quick_start/mobax_06.jpg)
随后进入SSH终端：
![SSH图](../_static/03_quick_start/mobax_07.jpg)
表示SSH登录成功。

## 运行示例

### 获取当前BSP版本号

#### AX8850 / AX8850N 主控开发板：

在终端中执行`cat /proc/ax_proc/version`会打印当前BSP版本号：

````bash
root@ax650:~# cat /proc/ax_proc/version
Ax_Version V3.10.2
root@ax650:~#
````

#### AX8910主控开发板：

(待补充)

### 运行基础AI示例

rootfs中内置了 `sample_npu_classification`和`sample_npu_yolov5s`两个基础AI示例，同时模型文件和图片文件在`/opt/data/npu/`路径下。

- sample_npu_classification
  在终端中执行指令`sample_npu_classification`运行分类模型示例：
  ![npu sample图](../_static/03_quick_start/classification.jpg)
- sample_npu_yolov5s
  在终端中执行指令`sample_npu_yolov5s`运行yolov5s模型示例：
  ![npu sample图](../_static/03_quick_start/yolov5s.jpg)
  运行结束后可在执行路径生成yolov5s_out.jpg，为识别结果：
  ![npu sample图](../_static/03_quick_start/yolov5s_out.jpg)


