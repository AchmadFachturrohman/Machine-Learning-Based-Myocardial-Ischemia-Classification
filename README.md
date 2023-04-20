# Machine-Learning-Based-Myocardial-Ischemia-Classification
Ischemia is a heart disease caused by atherosclerosis, namely narrowing of blood vessels caused by the buildup of cholesterol in the form of plaque in the blood vessels. Plaque causes blood flow back to the heart is blocked. The heart muscle is deprived of oxygen, reducing its ability to pump blood. If this condition occurs continuously, it can lead to heart attack or complications of myocardial infarction. Electrocardiograph (ECG) is the most widely used non-invasive monitoring of the heart's electrical signals in hospitals. In previous studies, many myocardial ischemia detection systems had been carried out with various signal processing methods, but the system had not been embedded in a microcontroller. Therefore, this study proposed to detect myocardial ischemia using microcontroller with wearable ECG. This study aims to help patients find out early on their heart condition against ischemic heart disease and avoid heart attack complications because the result can be shown in touchscreen display. The proposed device is used to record cardiac signals by processing digital signals using Discrete Wavelet Transforms (DWT) embedded in an ARM microcontroller. The signal processing results obtained peaks of P, QRS, and T waves based on 5 decomposition scales, then proceeded with classification using artificial neural networks. The classification process is categorized into normal and ischemia. The classification results were obtained with an accuracy of 96.17%, precision 93.08%, specificity 95.6%, and sensitivity 97.11%. The proposed method is useful in study of myocardial infarction and can be applied at the clinical level.

## Table of Contents
- [Motivation](#section-1)
- [Block Diagram](#section-2)
- [Dataset](#section-3)
- [Signal Processing](#section-4)
- [Neural Network](#section-5)
- [Result](#section-6)
- [References](#section-7)
- [Contact Us](#section-8)
- [BibTex](#section-9)

## Motivation
The main motivation is to detect early the clinical condition of the patient's heart to avoid complications that can harm him in the future. and if he has symptoms, appropriate medical treatment can be carried out to minimize complications.

Another motivation is to complete my studies and earn a bachelor's degree in engineering.

## Block Diagram
![diagram](https://user-images.githubusercontent.com/80017569/233285719-ac1f8f8e-5451-49ce-ac4d-a8e29d38f741.PNG)

## Dataset
The ECG signal dataset used in this research origins from [Physionet](https://archive.physionet.org/cgi-bin/atm/ATM) with MIT-BIH Normal and MIT-BIH ST Change for Normal and Ischemia ECG signal, respectively. 

## Signal Processing
This process is DWT to get the feature extraction data of the ECG signal, the 5th decomposed and all peaks of the ECG. The data is then saved in CSV format and used as an input to the Neural Network. I used 3000 sequence data of each type of data.

## Neural Network
After I got all of the data, I build a model for training using the stored data. The architecture that I used is an ANN with 250 nodes of inputs, 2 hidden layers, and 1 output layer with 2 nodes that represent the classes of normal and ischemia.

## Result
(coming soon)

## References
-	Ischemia: https://www.who.int/data/gho/data/themes/mortality-and-global-health-estimates
-	Neural Network: 
	-	H. S. N. Murthy and D. M. Meenakshi: https://www.researchgate.net/profile/M-Meenakshi-2/publication/281423706_ANN_SVM_and_KNN_classifiers_for_prognosis_of_cardiac_ischemia-a_comparison/links/56db070908aebabdb412df04/ANN-SVM-and-KNN-classifiers-for-prognosis-of-cardiac-ischemia-a-comparison.pdf?_sg%5B0%5D=started_experiment_milestone&origin=journalDetail
-	Discrete Wavelet Transform (DWT):
	- 	N. F. Hikmah, A. Arifin, T. A. Sardjono and E. A. Suprayitno: https://ieeexplore.ieee.org/abstract/document/7219966
	-	N. F. Hikmah, A. Arifin, and T. A. Sardjono: http://juti.if.its.ac.id/index.php/juti/article/view/992
	-	J. P. Martínez, R. Almeida, S. Olmos, A. P. Rocha, and P. Laguna: https://ieeexplore.ieee.org/abstract/document/1275572 
	-	M. Niknazar, B. V. Vahdat, and S. R. Mousavi: https://ieeexplore.ieee.org/abstract/document/5412588
-	Embedded DWT: 
	-	M. Bahoura, M. Hassani, and M. Hubin: https://www.sciencedirect.com/science/article/abs/pii/S016926079701780X 	

## Contact Us
-	Email: achmadfachturrohman@gmail.com
-	Linkedin: www.linkedin.com/in/achmad-fachturrohman/

## BibTex
Publication process in ICEBEHI 2022




