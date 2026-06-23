# LLM/VLM 专项性能

本页记录爱芯通元 NPU 平台上 LLM/VLM 的端侧推理表现，用于选型初筛和部署预估。表中数值来自实测，项目交付请以目标模型、上下文长度和运行配置复测为准。

当前数据以 **AX650 / AX8850** 平台为主；其余平台按适配进度补充。

字段约定：Decode 为单路（并发=1）解码吞吐 (tokens/s)；Encoder 为图像编码耗时；TTFT 为首字延迟；CMM/DDR 为板端需预留内存，分配容量需大于表中数值；Flash 为模型占用空间；`-` 表示该项暂未提供。同一模型如有多档量化，按量化档位分行记录。

## AX650 / AX8850

### 文本大模型 (LLM)

#### Qwen3 系列

| 模型 | 量化 | Decode (tok/s) | CMM/DDR | Flash | Pulsar2 |
| --- | --- | --- | --- | --- | --- |
| Qwen3-0.6B | W8A16 | 16.90 | 1.3 GiB | 1.2 GiB | 5.2 |
| Qwen3-0.6B-GPTQ-Int4 | W4A16 | 20.21 | 0.95 GiB | 0.84 GiB | 5.2 |
| Qwen3-1.7B | W8A16 | 8.6 | 2.4 GiB | 2.6 GiB | 5.2 |
| Qwen3-1.7B-GPTQ-Int4 | W4A16 | 12.72 | 1.7 GiB | 1.9 GiB | 5.2 |
| Qwen3-4B | W8A16 | 4.01 | 5.1 GiB | 5.3 GiB | 5.2 |
| Qwen3-4B-GPTQ-Int4 | W4A16 | 6.5 | 3.4 GiB | 3.5 GiB | 5.2 |
| Qwen3-4B-Instruct-2507-GPTQ-Int8 | W8A16 | 4.5 | - | - | 5.1 |
| Qwen3-4B-Instruct-2507-GPTQ-Int4 | W4A16 | 5.7 | - | - | 5.1 |

#### Qwen2.5 系列

| 模型 | 量化 | Decode (tok/s) | CMM/DDR | Flash | Pulsar2 |
| --- | --- | --- | --- | --- | --- |
| Qwen2.5-0.5B-Instruct-CTX-Int8 | W8A16 | 30 | - | - | 4.2 |
| Qwen2.5-0.5B-Instruct-GPTQ-Int4 | W4A16 | 44 | - | - | 4.2 |
| Qwen2.5-1.5B-Instruct | W8A16 | 12 | 2.3 GB | 2.3 GB | 4.1 |
| Qwen2.5-1.5B-Instruct | W4A16 | 17 | 2.3 GB | 2.3 GB | 4.1 |
| Qwen2.5-3B-Instruct-GPTQ-Int4 | W4A16 | 10 | 2.9 GB | - | 3.4 |
| Qwen2.5-7B-Instruct | W8A16 | 2.8 | 5.2 GB | 5.7 GB | 4.1 |
| Qwen2.5-7B-Instruct | W4A16 | 5.0 | - | - | 4.1 |

#### DeepSeek-R1-Distill 系列

| 模型 | 量化 | Decode (tok/s) | CMM/DDR | Flash | Pulsar2 |
| --- | --- | --- | --- | --- | --- |
| DeepSeek-R1-Distill-Qwen-1.5B | W8A16 | 12 | 2.3 GB | 2.3 GB | 4.2 |
| DeepSeek-R1-Distill-Qwen-1.5B | W4A16 | 17 | 2.3 GB | 2.3 GB | 4.2 |
| DeepSeek-R1-Distill-Qwen-7B | W8A16 | 2.6 | ~7.6 GiB | - | 4.2 |
| DeepSeek-R1-Distill-Qwen-7B | W4A16 | 4.8 | - | - | 4.2 |

#### 其他系列（MiniCPM / SmolLM / Gemma / 翻译 / Embedding）

| 模型 | 量化 | Decode (tok/s) | CMM/DDR | Flash | Pulsar2 |
| --- | --- | --- | --- | --- | --- |
| MiniCPM4-0.5B | W8A16 | 36 | - | - | 4.2 |
| MiniCPM5-1B | - | 17.96 | - | 1.42 GiB | - |
| SmolLM2-360M-Instruct | W8A16 | 39 | - | - | 4.2 |
| gemma-4-E2B-it | W8A16 | 7.99 | 3.80 GiB | 3.84 GiB | 5.2 |
| gemma-4-E2B-it-GPTQ-INT4 | W4A16 | 12.41 | 2.87 GiB | 2.92 GiB | 5.2 |
| HY-MT1.5-1.8B-GPTQ-Int4 | W4A16 | 15.7 | - | - | 5.1 |
| Qwen3-Embedding-0.6B | W8A16 | 0.82 | - | - | 4.1 |

### 多模态大模型 (VLM)

#### Qwen-VL 系列

| 模型 | 量化 | 输入分辨率 | Decode (tok/s) | Encoder (ms) | TTFT (ms) | CMM | Flash | Pulsar2 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Qwen3-VL-2B-Instruct | W8A16 | 384*384 | 9.5 | 238 | 392 | 4.1 GiB | 4.2 GiB | 5.0 |
| Qwen3-VL-2B-Instruct-GPTQ-Int4 | W4A16 | 384*384 | 12.1 | 238 | 323 | 2.5 GiB | 3.3 GiB | 5.0 |
| Qwen3-VL-4B-Instruct | W8A16 | 384*384 | 4.3 | 236 | 907 | 7.3 GiB | 7.9 GiB | 5.0 |
| Qwen3-VL-4B-Instruct-GPTQ-Int4 | W4A16 | 384*384 | 7.0 | 222 | 678 | 5.6 GiB | 5.6 GiB | 5.0 |
| Qwen3-VL-8B-Instruct | W8A16 | 384*384 | 2.5 | 280 | 1476 | 11.8 GB | 14 GB | 5.0 |
| Qwen3-VL-8B-Instruct-GPTQ-Int4 | W4A16 | 384*384 | 4.5 | 280 | 1066 | 8.3 GiB | 9.1 GiB | 5.0 |
| Qwen2.5-VL-3B-Instruct | W8A16 | 448*448 | 5.9 | 780 | 1651 | 4.3 GiB | 4.6 GiB | 3.4 |
| Qwen2.5-VL-7B-Instruct | W8A16 | 448*448 | 2.0 | 760 | 3500 | 10.0 GiB | 9.8 GiB | 3.4 |

#### Qwen3.5 系列（多模态）

| 模型 | 量化 | 输入分辨率 | Decode (tok/s) | TTFT (ms) | CMM | Flash | Pulsar2 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Qwen3.5-0.8B-C128-P1152-CTX2047 | W8A16 | 384*384 | 18.5 | 282 | 1.27 GiB | 1.54 GiB | 5.0 |
| Qwen3.5-0.8B-GPTQ-Int4-C128-P1152-CTX2047 | W4A16 | 384*384 | 23.8 | 250 | 0.94 GiB | 1.31 GiB | 5.0 |
| Qwen3.5-2B-C128-P1152-CTX2047 | W8A16 | 384*384 | 9.0 | 460 | 2.4 GiB | 3.46 GiB | 5.0 |
| Qwen3.5-2B-GPTQ-Int4-C128-P1152-CTX2047 | W4A16 | 384*384 | 13.4 | 368 | 1.72 GiB | 2.8 GiB | 5.0 |
| Qwen3.5-4B-GPTQ-Int4-C128-P1152-CTX2047 | W4A16 | 384*384 | 5.7 | 845 | 3.48 GiB | 4.63 GiB | 5.0 |

#### InternVL 系列

| 模型 | 量化 | 输入分辨率 | Decode (tok/s) | Encoder (ms) | TTFT (ms) | Pulsar2 |
| --- | --- | --- | --- | --- | --- | --- |
| InternVL2_5-1B | W8A16 | 448*448 | 32 | 350 | 420 | 3.3 |
| InternVL2_5-1B-MPO | W8A16 | 448*448 | 32 | 350 | 420 | 4.1 |
| InternVL3-1B | W8A16 | 448*448 | 30 | 380 | 623 | 4.1 |
| InternVL3-2B | W8A16 | 448*448 | 10 | 364 | 862 | 4.2 |
| InternVL3_5-1B | W8A16 | 448*448 | 21.60 | 364 | 5072 | 5.1 |
| InternVL3_5-1B-GPTQ-Int4 | W4A16 | 448*448 | 28.09 | 364 | 883 | 5.1 |
| InternVL3_5-2B | W8A16 | 448*448 | 9.52 | 364 | 5844 | 5.1 |
| InternVL3_5-2B-GPTQ-Int4 | W4A16 | 448*448 | 28.07 | 364 | 4952 | 5.1 |

#### 其他系列（MiniCPM-V / FastVLM / Janus / SmolVLM / OCR）

| 模型 | 量化 | 输入分辨率 | Decode (tok/s) | Encoder (ms) | TTFT (ms) | CMM | Flash | Pulsar2 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| MiniCPM-V-4.6 | BF16 | 448*448 | 19.02 | 234.8 | 729.9 | 1.53 GiB | 1.42 GiB | - |
| MiniCPM-V-4.6-GPTQ | W4A16 | 448*448 | 24.49 | 235.3 | 719.8 | 1.30 GiB | 1.19 GiB | - |
| FastVLM-0.5B | W4A16 | 512*512 | 34.81 | 59.8 | 76.4 | - | - | 5.1 |
| FastVLM-1.5B | W8A16 | 512*512 | 11.53 | 58.6 | 179.7 | - | - | 5.1 |
| FastVLM-1.5B | W8A16 | 1024*1024 | 11.53 | 231.1 | 568.0 | - | - | 5.1 |
| FastVLM-1.5B-GPTQ-Int4 | W4A16 | 512*512 | 19.87 | 58.3 | 128.9 | 1.4 GiB | - | 5.1 |
| FastVLM-1.5B-GPTQ-Int4 | W4A16 | 1024*1024 | 19.87 | 237.5 | 418.4 | 1.4 GiB | - | 5.1 |
| Janus-Pro-1B | W8A16 | 384*384 | 11.43 | 142.7 | 4560.2 | - | - | 3.4 |
| SmolVLM-256M-Instruct | W8A16 | 512*512 | 80 | 105 | 57 | - | - | 3.4 |
| SmolVLM2-256M-Video-Instruct | W8A16 | 512*512 | 76.7 | 516 | 271 | 455 MB | 415 MB | 5.0 |
| SmolVLM2-500M-Video-Instruct | W8A16 | 512*512 | 35.23 | 537 | 510 | 773 MB | 813 MB | 5.0 |
| PaddleOCR-VL-1.5 | W4A16 | 576x768 | 44.6 | 1685.6 | 361.8 | - | - | 5.0 |

```{note}
TTFT 各模型按不同 prefill token 数统计（Qwen3-VL / Qwen3.5 为 168 tokens，Qwen2.5-VL-3B 为 384 tokens，Qwen2.5-VL-7B 为 320 tokens），不同模型间 TTFT 不可直接横向比较。
```

## AX630C

该平台优先覆盖终端黑光等轻量部署场景，目前已适配部分小参数模型。

| 模型 | 类型 | 量化 | Decode (tok/s) | Pulsar2 |
| --- | --- | --- | --- | --- |
| MiniCPM4-0.5B | LLM | W8A16 | 12 | 4.2 |
| SmolLM2-360M-Instruct | LLM | W8A16 | 14 | 4.2 |
| Qwen3-VL-2B-Instruct-GPTQ-Int4 | VLM | W4A16 | 适配中 | 5.0 |

## AX637

| 模型 | 类型 | 量化 | Decode (tok/s) | CMM | Flash | Pulsar2 |
| --- | --- | --- | --- | --- | --- | --- |
| Qwen3-0.6B | LLM | - | 8.13 | 774 MB | 1.30 GiB | - |

## AX620E

| 模型 | 类型 | 量化 | Decode (tok/s) | TTFT (ms) | Pulsar2 |
| --- | --- | --- | --- | --- | --- |
| HY-MT1.5-1.8B-GPTQ-Int4 | LLM | W4A16 | 4.05 | 11538.6 | 5.1 |


## 模型获取与更新

预编译 axmodel、转换脚本与运行示例可通过 [AXERA 模型仓库](https://huggingface.co/AXERA-TECH) 获取。性能会随工具链版本、上下文长度和运行配置变化，落地前需要结合目标场景复测；本页数据会随平台适配进展更新。
