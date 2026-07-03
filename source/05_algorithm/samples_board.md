# NPU 示例展示

## 安装AX-LLM

LLM和Multimodal Models的示例需要依赖AX-LLM工具来运行，用户可以通过以下任一方式安装AX-LLM：

方式一：克隆仓库后执行安装脚本：

```shell
git clone -b axllm https://github.com/AXERA-TECH/ax-llm.git
cd ax-llm
./install.sh
```

方式二：一行命令安装（默认分支 `axllm`）：

```shell
curl -fsSL https://raw.githubusercontent.com/AXERA-TECH/ax-llm/axllm/install.sh | bash
```

方式三：下载Github Actions CI 导出的可执行程序（适合没有编译环境的用户）：

如果没有编译环境，请到：
`https://github.com/AXERA-TECH/ax-llm/actions?query=branch%3Aaxllm`
下载 **最新 CI 导出的可执行程序**（`axllm`），然后：

```shell
chmod +x axllm
sudo mv axllm /usr/bin/axllm
```

## LLM

### Qwen3.5-2B

```
# 下载仓库
cd /root/
mkdir -p AXERA-TECH/Qwen3.5-2B
cd AXERA-TECH/Qwen3.5-2B

# 使用 huggingface 下载命令
hf download AXERA-TECH/Qwen3.5-2B-AX650-C128-P1152-CTX2047 --local-dir .
# 使用 modelscope 下载命令
modelscope download AXERA-TECH/Qwen3.5-2B-AX650-C128-P1152-CTX2047 --local_dir .

cd /root
# 运行 CLI
axllm run AXERA-TECH/Qwen3.5-2B/
# 运行 API 服务
axllm serve AXERA-TECH/Qwen3.5-2B/

# 详细使用方法请参考：https://hf-mirror.com/AXERA-TECH/Qwen3.5-2B-AX650-C128-P1152-CTX2047 或 https://modelscope.cn/models/AXERA-TECH/Qwen3.5-2B-AX650-C128-P1152-CTX2047 Model card说明
```

## Multimodal Models

### Qwen3-VL-2B-Instruct-GPTQ-Int4(图片&视频理解)

```
# 下载仓库
cd /root/
mkdir -p AXERA-TECH/Qwen3-VL-2B-Instruct-GPTQ-Int4
cd AXERA-TECH/Qwen3-VL-2B-Instruct-GPTQ-Int4

# huggingface 下载命令
hf download AXERA-TECH/Qwen3-VL-2B-Instruct-GPTQ-Int4 --local-dir .
# modelscope 下载命令
modelscope download AXERA-TECH/Qwen3-VL-2B-Instruct-GPTQ-Int4 --local_dir .

cd /root
# 运行 CLI
axllm run AXERA-TECH/Qwen3-VL-2B-Instruct-GPTQ-Int4/
# 运行 API 服务
axllm serve AXERA-TECH/Qwen3-VL-2B-Instruct-GPTQ-Int4/

#详细使用方法请参考：https://hf-mirror.com/AXERA-TECH/Qwen3-VL-2B-Instruct-GPTQ-Int4 或 https://modelscope.cn/models/AXERA-TECH/Qwen3-VL-2B-Instruct-GPTQ-Int4 Model card说明
```

## Vision Models

- 相关示例请参考AXERA-TECH的Github仓库：[ax-samples](https://github.com/AXERA-TECH/ax-samples/tree/main)
- 相关已量化编译模型下载路径：AXERA-TECH的HuggingFace仓库：[AXERA-TECH HF](https://huggingface.co/AXERA-TECH) 或 ModelScope仓库：[AXERA-TECH](https://modelscope.cn/organization/AXERA-TECH)

## Audio Models

- 相关示例请参考AXERA-TECH的Github仓库：[Sherpa-onnx.axera](https://github.com/AXERA-TECH/Sherpa-onnx.axera)