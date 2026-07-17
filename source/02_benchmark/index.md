# 性能与基准测试

本章整理 AXERA 芯片在 CNN/Transformer 与大模型 (LLM/VLM) 上的实测性能，并记录 OS:CMM、卡端 DDR、固件/驱动等复现所需的环境信息。

目前已收录的数据主要来自 [ax-samples](https://github.com/AXERA-TECH/ax-samples)，后续会随工具链和模型适配进展继续补充。

```{toctree}
:maxdepth: 1

overview
cnn_transformer
llm_vlm
```

**本章内容**

- **Benchmark 综述**：测试条件、环境信息与数据记录规范，并说明 AX650 的时钟、NPU DDR 带宽及带宽限制检查方法。
- **CNN/Transformer 性能**：典型视觉模型推理速度与能效比。
- **LLM/VLM 性能**：解码速度 (tokens/s)、首字延迟、并发路数与内存占用。
