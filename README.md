## AMD-Diagnosis
Purpose: Developing an ensemble model to accurately predict AMD disease in very early stages.

Methods: This project divided into two parts: 1) 2D segmentation and classification, 2) 3D classification

![image](https://user-images.githubusercontent.com/78983558/170832287-6f605a9d-086c-4280-b485-0bd5e76b21eb.png)

1) 2D segmentation models: Residual Attention UNET, Regular UNET, RESNET34

![image](https://user-images.githubusercontent.com/78983558/170849001-57463f2e-1d18-4613-b616-82e997036a85.png)


   1-1) 2D classifiers: DenseNet121, EfficientNetB3, VGG16
   
   ![image](https://user-images.githubusercontent.com/78983558/170849649-e42c300d-e0fc-4a7a-9aed-2ecde02bd673.png)

2) 3D classification

![image](https://user-images.githubusercontent.com/78983558/170849636-46c76118-d894-49d7-8663-e77b5e74ee21.png)

## The proposed deep majority soft voting ensemble model:

![image](https://user-images.githubusercontent.com/78983558/170849676-5cd4f183-999a-4abd-9f2c-0aaa91c3cb0f.png)

## Rocommended System:
- Windows PC with> 128 GB RAM, GPU RTX 3090+ 24 GB onboard memory
- Spyder 5.1.5, Python 3.8.8 (default, Apr 13 2021, 15:08:03) [MSC v.1916 64 bit (AMD64)]
- Modules and libraries: TensorFlow 2.5.2, CUDA v11.4.0,cuDNN v8.3.1, Keras 2.5.0, Patchify, OpenCV> 4.4, Pillow, Matplot lib, glob


Keras Version: 2.5.0

## Instruction:
- 2D models training/validation/testing:
1- Run 2D image processing and data preparation code (contrast enhancement with CLAHE + data augmentation + Contour detection and patchify)
2- feed prepared images (and ground truth) into segmentation and classification models
- 3D models training/validation/testing:
1- Run 3D image processing and data preparation code (contrast enhancement with CLAHE + data augmentation + Contour detection and patchify)
2- feed prepared cude data into 3D CNN model. 
