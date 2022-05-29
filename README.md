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

3- Deep ensemble majority voting:

![image](https://user-images.githubusercontent.com/78983558/170849676-5cd4f183-999a-4abd-9f2c-0aaa91c3cb0f.png)
