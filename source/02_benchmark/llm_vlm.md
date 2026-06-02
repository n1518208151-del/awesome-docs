# LLM/VLM 专项性能

## 大模型推理速度 (Tokens/s)

> TODO：补充各 LLM/VLM 在不同芯片、不同量化精度下的解码速度。

| 模型 | 量化 | 芯片 | Prefill | Decode (tokens/s) |
| --- | --- | --- | --- | --- |
| Qwen3-0.6B | W8A16 | AX650N | TODO | TODO |
| Qwen3-1.7B | W8A16 | AX650N | TODO | TODO |
| Qwen3-4B | W8A16 | AX650N | TODO | TODO |

## 首字延迟与并发路数

> TODO：补充 TTFT（首字延迟）与多路并发下的性能曲线。

## 显存占用分析

> TODO：补充不同模型 / 上下文长度下的 DDR 占用，用于硬件选型（DDR 容量）。
