## AMD-Diagnosis
Purpose: Developing an ensemble model to accurately predict Age-related Macular Degeneration (AMD) disease in very early stages.

Methods: This project divided into two parts: 1) 2D segmentation and classification, 2) 3D classification

![image](https://user-images.githubusercontent.com/78983558/175354387-87449555-41ba-4023-8429-75ee1c6f99fa.png)


1) 2D segmentation models: Residual Attention UNET, Regular UNET, RESNET34

![image](https://user-images.githubusercontent.com/78983558/173388606-73ff8358-a5b9-40cf-bc32-d3cea0f1371d.png)


   1-1) 2D classifiers: DenseNet121, EfficientNetB3, VGG16
   
   ![image](https://user-images.githubusercontent.com/78983558/170849649-e42c300d-e0fc-4a7a-9aed-2ecde02bd673.png)

2) 3D classification

![image](https://user-images.githubusercontent.com/78983558/173388713-d6ccc05c-59dd-430d-a19d-99d3300d97c3.png)


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
