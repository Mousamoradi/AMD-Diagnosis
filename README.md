## AMD-Diagnosis
- Purpose: To develop an ensemble model to accurately predict Age-related Macular Degeneration (AMD) disease in the early stages of the disease progression.
- Contribution: 11 retinal boundaries initially segmented by OCT EXplorer [1] were modified based on the cubic spline and directional graph theory to have accurate ground truth and feature extraction.

- Methods: This project is divided into two parts: 1) 2D segmentation and classification, 2) 3D classification

![image](https://user-images.githubusercontent.com/78983558/176928505-249c7153-4af9-4164-bcd9-c3b67f845303.png)

1) 2D Segmentation Models: Residual Attention UNET [2], Regular UNET, RESNET34

![image](https://user-images.githubusercontent.com/78983558/173388606-73ff8358-a5b9-40cf-bc32-d3cea0f1371d.png)


   1-1) 2D Classifiers: DenseNet121, EfficientNetB3, VGG16
   - The ensemble stacking method [3] was used to augment the classifier. 
   
   ![image](https://user-images.githubusercontent.com/78983558/170849649-e42c300d-e0fc-4a7a-9aed-2ecde02bd673.png)

2) 3D Classification

![image](https://user-images.githubusercontent.com/78983558/175359074-cc1fe40f-8570-42e8-82fa-97a26593015e.png)

## The proposed deep majority soft voting ensemble model:

![image](https://user-images.githubusercontent.com/78983558/170849676-5cd4f183-999a-4abd-9f2c-0aaa91c3cb0f.png)

## Recommended System:
- Windows PC with> 128 GB RAM, GPU RTX 3090+ 24 GB onboard memory
- Spyder 5.1.5, Python 3.8.8 (default, Apr 13 2021, 15:08:03) [MSC v.1916 64 bit (AMD64)]
- Modules and libraries: TensorFlow 2.5.2, CUDA v11.4.0,cuDNN v8.3.1, Keras 2.5.0, Patchify, OpenCV> 4.4, Pillow, Matplot lib, glob, Keras Version: 2.5.0
- MATLAB >= R2021a with image processing toolbox. 

## Instruction:
- Feature Extraction: This code extracts 169 OCT imaging features in each retinal scan. 
- 2D models training/validation/testing:
1- Run 2D image processing and data preparation code (contrast enhancement with CLAHE + data augmentation + Contour detection and patchify)
2- Feed prepared images (and ground truth) into segmentation and classification models
- 3D models training/validation/testing:
1- Run 3D image processing and data preparation code (contrast enhancement with CLAHE + data augmentation + Contour detection and patchify)
2- feed prepared cude data into 3D CNN model. 


## References
[1] K. Lee, M.D.A., M. Garvin, M. Sonka, and X. Wu. “Iowa reference algorithm – OCTExplorer”. 2020; Available from: https://www.iibi.uiowa.edu/oct-reference.

[2] Moradi, M., X. Du, T. Huan, and Y. Chen, Feasibility of the soft attention-based models for automatic segmentation of OCT kidney images. Biomedical Optics Express, 2022. 13(5): p. 2728-2738.

[3] Moradi, M., Huan, T., Y. Chen, X. Du, and J. Seddon, Ensemble learning for AMD prediction using retina OCT scans. Investigative Ophthalmology & Visual Science, 2022. 63(7): p. 732–F0460-732–F0460.

[![DOI](https://zenodo.org/badge/497352679.svg)](https://zenodo.org/badge/latestdoi/497352679)

