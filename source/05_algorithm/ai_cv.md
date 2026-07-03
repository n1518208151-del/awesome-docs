# CV 类算法

本页列出已在爱芯 NPU 平台完成适配的计算机视觉模型。所有模型可通过 AXERA 模型仓库（[Hugging Face](https://huggingface.co/AXERA-TECH) | [ModelScope](https://modelscope.cn/organization/AXERA-TECH)）下载预编译 axmodel。

运行示例与上板命令见 [示例展示](samples_board.md)。

## 目标检测

### YOLO 系列

- YOLOv5：检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLOv5) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLOv5)
- YOLOv5-Seg：实例分割，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLOv5-Seg) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLOv5-Seg)
- YOLOv7-Face：人脸检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLOv7-Face) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLOv7-Face)
- YOLOv8：检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLOv8) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLOv8)
- YOLOv8-Seg：实例分割，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLOv8-Seg) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLOv8-Seg)
- YOLOv8-Pose：姿态估计，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLOv8-Pose) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLOv8-Pose)
- YOLOv8-Aquarium：水族馆检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLOv8-Aquarium) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLOv8-Aquarium)
- YOLO11：检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLO11) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLO11)
- YOLO11-Seg：实例分割，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLO11-Seg) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLO11-Seg)
- YOLO11-Pose：姿态估计，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLO11-Pose) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLO11-Pose)
- yolo11-obb：旋转框检测，AX8850N / AX8850 / AX8910 | [HuggingFace](https://huggingface.co/AXERA-TECH/yolo11-obb) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/yolo11-obb)
- yolo26：检测，AX8850N / AX8850 / AX8910 | [HuggingFace](https://huggingface.co/AXERA-TECH/yolo26) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/yolo26)
- yolo26-seg：实例分割，AX8850N / AX8850 / AX8910 | [HuggingFace](https://huggingface.co/AXERA-TECH/yolo26-seg) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/yolo26-seg)
- yolo26-pose：姿态估计，AX8850N / AX8850 / AX8910 | [HuggingFace](https://huggingface.co/AXERA-TECH/yolo26-pose) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/yolo26-pose)
- yolo26-obb：旋转框检测，AX8850N / AX8850 / AX8910 | [HuggingFace](https://huggingface.co/AXERA-TECH/yolo26-obb) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/yolo26-obb)

### 开放词汇 / Transformer 检测

- YOLO-World-V2：开放词汇检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/YOLO-World-V2) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/YOLO-World-V2)
- RT-DETR：实时端到端检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/RT-DETR) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/RT-DETR)
- DEIMv2：端到端检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/DEIMv2) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/DEIMv2)
- Deformable-Detr：Deformable DETR，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/Deformable-Detr) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Deformable-Detr)
- OWLViT2：开放词汇视觉检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/OWLViT2) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/OWLViT2)
- WeDetect：轻量级开放词汇视觉检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/WeDetect.axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/WeDetect.axera)

### 行业场景检测

- Helmet-axera：安全帽检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/Helmet-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Helmet-axera)
- Gesture-axera：手势识别 | [HuggingFace](https://huggingface.co/AXERA-TECH/Gesture-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Gesture-axera)
- E_bike-axera：电动车检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/E_bike-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/E_bike-axera)
- Package-axera：包裹检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/Package-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Package-axera)
- Plate-axera：车牌检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/Plate-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Plate-axera)
- Pet-axera：宠物检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/Pet-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Pet-axera)
- Fall-axera：跌倒检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/Fall-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Fall-axera)
- Drone-axera：无人机检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/Drone-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Drone-axera)
- Cow-axera：牛只检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/Cow-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Cow-axera)
- Person_car-axera：人车检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/Person_car-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Person_car-axera)
- QRCode-axera：二维码检测 | [HuggingFace](https://huggingface.co/AXERA-TECH/QRCode-axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/QRCode-axera)
- Bird-Species-Classification：鸟类分类 | [HuggingFace](https://huggingface.co/AXERA-TECH/Bird-Species-Classification) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Bird-Species-Classification)
- pp-nsfw_Inspector：内容安全审核 | [HuggingFace](https://huggingface.co/AXERA-TECH/pp-nsfw_Inspector) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/pp-nsfw_Inspector)

## 分割

- MobileSAM：轻量 Segment Anything，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/MobileSAM) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/MobileSAM)
- EdgeTAM：边缘端 Track Anything，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/EdgeTAM) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/EdgeTAM)
- DeepLabv3Plus：语义分割，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/DeepLabv3Plus) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/DeepLabv3Plus)

## 人脸

- Insightface：人脸检测 / 识别 / 关键点，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/Insightface) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Insightface)

## 深度估计

- Depth-Anything-V2：单目深度估计，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/Depth-Anything-V2) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Depth-Anything-V2)
- Depth-Anything-3：单目深度估计 v3，AX8850N / AX8910 | [HuggingFace](https://huggingface.co/AXERA-TECH/Depth-Anything-3) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Depth-Anything-3)
- IGEV-plusplus：双目立体匹配，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/IGEV-plusplus) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/IGEV-plusplus)
- RAFT-stereo：双目立体匹配，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/RAFT-stereo) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/RAFT-stereo)

## 图像增强 / 超分 / 修复

- Real-ESRGAN：真实世界超分辨率，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/Real-ESRGAN) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Real-ESRGAN)
- Real-ESRGAN.axera：Real-ESRGAN 方案包，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/Real-ESRGAN.axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Real-ESRGAN.axera)
- CodeFormer：人脸修复，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/CodeFormer) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/CodeFormer)
- DeOldify：黑白上色，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/DeOldify) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/DeOldify)
- SuperResolution：通用超分，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/SuperResolution) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/SuperResolution)
- Z-Image-Turbo：图像增强，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/Z-Image-Turbo) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/Z-Image-Turbo)
- RIFE.axera：视频插帧，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/RIFE.axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/RIFE.axera)
- RMBG-1.4：背景移除，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/RMBG-1.4) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/RMBG-1.4)

## 跟踪

- MixFormerV2：单目标跟踪，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/MixFormerV2) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/MixFormerV2)

## CLIP / 图文对齐

- clip：OpenAI CLIP，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/clip) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/clip)
- FG-CLIP：细粒度 CLIP，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/FG-CLIP) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/FG-CLIP)
- MobileCLIP：轻量 CLIP，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/MobileCLIP) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/MobileCLIP)
- LibCLIP：CLIP 推理库，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/LibCLIP) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/LibCLIP)
- jina-clip-v2：Jina CLIP v2，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/jina-clip-v2) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/jina-clip-v2)
- siglip-so400m-patch14-384：SigLIP，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/siglip-so400m-patch14-384) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/siglip-so400m-patch14-384)
- siglip2-base-patch16-224：SigLIP2，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/siglip2-base-patch16-224) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/siglip2-base-patch16-224)
- cnclip：中文 CLIP，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/cnclip) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/cnclip)
- ViT-L-14-336__axera：ViT-L/14 CLIP，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/ViT-L-14-336__axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/ViT-L-14-336__axera)
- ViT-L-14-336-CN__axera：ViT-L/14 中文 CLIP，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/ViT-L-14-336-CN__axera) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/ViT-L-14-336-CN__axera)
- dinov3_vits_pretrain_lvd1689m：DINOv3 ViT-S，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/dinov3_vits_pretrain_lvd1689m) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/dinov3_vits_pretrain_lvd1689m)
- immich：Immich 图像分类模型，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/immich) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/immich)

## 姿态 / 关键点

- superpoint：特征点检测与描述，AX8850N / AX8910 | [HuggingFace](https://huggingface.co/AXERA-TECH/superpoint) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/superpoint)
- RTMPose：实时人体姿态估计，AX8850N / AX8850 | [HuggingFace](https://huggingface.co/AXERA-TECH/RTMPose) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/RTMPose)

## 生成

- lcm-lora-sdv1-5：Stable Diffusion 1.5 + LCM-LoRA，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/lcm-lora-sdv1-5) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/lcm-lora-sdv1-5)
- LivePortrait：肖像动画驱动，AX8850N / AX8850 | [HuggingFace](https://huggingface.co/AXERA-TECH/LivePortrait) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/LivePortrait)

## OCR

- PPOCR_v5：PaddleOCR v5 检测+识别，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/PPOCR_v5) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/PPOCR_v5)
- satrn：场景文本识别，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/satrn) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/satrn)
- OCR_RAG-AX8850N：OCR + RAG 方案，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/OCR_RAG-AX8850N) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/OCR_RAG-AX8850N)

## 3D / BEV

- bevformer：BEV 感知，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/bevformer) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/bevformer)
- centerpoint：3D 目标检测，AX8850N | [HuggingFace](https://huggingface.co/AXERA-TECH/centerpoint) | [ModelScope](https://modelscope.cn/models/AXERA-TECH/centerpoint)
