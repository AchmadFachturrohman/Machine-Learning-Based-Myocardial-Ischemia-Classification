# Machine-Learning-Based-Myocardial-Ischemia-Classification
Ischemia is a heart disease caused by atherosclerosis, namely narrowing of blood vessels caused by the buildup of cholesterol in the form of plaque in the blood vessels. Plaque causes blood flow back to the heart is blocked. The heart muscle is deprived of oxygen, reducing its ability to pump blood. If this condition occurs continuously, it can lead to heart attack or complications of myocardial infarction. Electrocardiograph (ECG) is the most widely used non-invasive monitoring of the heart's electrical signals in hospitals. In previous studies, many myocardial ischemia detection systems had been carried out with various signal processing methods, but the system had not been embedded in a microcontroller. Therefore, this study proposed to detect myocardial ischemia using microcontroller with wearable ECG. This study aims to help patients find out early on their heart condition against ischemic heart disease and avoid heart attack complications because the result can be shown in touchscreen display. The proposed device is used to record cardiac signals by processing digital signals using Discrete Wavelet Transforms (DWT) embedded in an ARM microcontroller. The signal processing results obtained peaks of P, QRS, and T waves based on 5 decomposition scales, then proceeded with classification using artificial neural networks. The classification process is categorized into normal and ischemia. The classification results were obtained with an accuracy of 96.17%, precision 93.08%, specificity 95.6%, and sensitivity 97.11%. The proposed method is useful in study of myocardial infarction and can be applied at the clinical level.

## Table of Contents
- [Motivation](#section-1)
- [Dataset](#section-2)
- [Signal Processing](#section-3)
- [Neural Network](#section-4)
- [Result](#section-5)
- [References](#section-6)
- [Contact Us](#section-7)
- [BibTex](#section-8)

## Motivation
The main motivation is to detect early the clinical condition of the patient's heart to avoid complications that can harm him in the future. and if he has symptoms, appropriate medical treatment can be carried out to minimize complications.

Another motivation is to complete my studies and earn a bachelor's degree in engineering.

## Dataset
The ECG signal dataset used in this research origins from [Physionet](https://archive.physionet.org/cgi-bin/atm/ATM) with MIT-BIH Normal and MIT-BIH ST Change for Normal and Ischemia ECG signal, respectively. 

## Signal Processing
This process is DWT to get the feature extraction data of the ECG signal, the 5th decomposed and all peaks of the ECG. The data is then saved in CSV format and used as an input to the Neural Network. I used 3000 sequence data of each type of data.

## Neural Network
After I got all of the data, I build a model for training using the stored data. The architecture that I used is an ANN with 250 nodes of inputs, 2 hidden layers, and 1 output layer with 2 nodes that represent the classes of normal and ischemia.

## Result
(coming soon)

## References
-	W. H. O. (WHO), "Global Health Estimates: Life expectancy and leading causes of death and disability," 2019. https://www.who.int/data/gho/data/themes/mortality- and-global-health-estimates (accessed Jun. 10, 2021).
-	H. S. N. Murthy and D. M. Meenakshi, "ANN, SVM and KNN Classifiers for Prognosis of Cardiac Ischemia- A Comparison," Bonfring Int. J. Res. Commun. Eng., vol. 5, no. 2, pp. 07–11, 2015, doi: 10.9756/bijrce.8030.
-	N. F. Hikmah, A. Arifin, T. A. Sardjono and E. A. Suprayitno, "A signal processing framework for multimodal cardiac analysis," 2015 International Seminar on Intelligent Technology and Its Applications (ISITIA), 2015, pp. 125-130, doi: 10.1109/ISITIA.2015.7219966.
-	N. F. Hikmah, A. Arifin, and T. A. Sardjono, "Delineation of Ecg Feature Extraction Using Multiresolution Analysis Framework," JUTI J. Ilm. Teknol. Inf., vol. 18, no. 2, p. 135, 2020, doi: 10.12962/j24068535.v18i2.a992. 
-	J. P. Martínez, R. Almeida, S. Olmos, A. P. Rocha, and P. Laguna, “A Wavelet-Based ECG Delineator Evaluation on Standard Databases,” IEEE Trans. Biomed. Eng., vol. 51, no. 4, pp. 570–581, 2004, doi: 10.1109/TBME.2003.821031. 
-	M. Bahoura, M. Hassani, and M. Hubin, "DSP implementation of wavelet transform for real time ECG wave forms detection and heart rate analysis," Comput. Methods Programs Biomed., vol. 52, no. 1, pp. 35–44, 1997, doi: 10.1016/S0169-2607(97)01780-X. 
-	M. Niknazar, B. V. Vahdat, and S. R. Mousavi, "Detection of characteristic points of ecg using quadratic spline wavelet transfrom," 3rd Int. Conf. Signals, Circuits Syst. SCS 2009, no. 2, pp. 2–7, 2009, doi: 10.1109/ICSCS.2009.5412588.

## Contact Us
Email: achmadfachturrohman@gmail.com

## BibTex
in the process of publication in ICEBEHI 2022




