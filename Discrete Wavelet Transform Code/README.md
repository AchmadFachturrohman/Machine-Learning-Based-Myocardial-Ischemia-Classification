# Discrete-Wavelet-Transform-to-ECG-Peaks-Detections

This is my multi-resolution, discrete wavelet transform to detect peak ECG waves in patients with myocardial ischemia. The input signals are ECG signals, such as an ECG rate of 60 beats per minute (normal) and ST-wave elevation and depression (ischemia). Also included are the Physionet [MIT-BIH Normal](https://archive.physionet.org/cgi-bin/atm/ATM) and [MIT-BIH ST Change datasets](https://archive.physionet.org/cgi-bin/atm/ATM), for normal and ischemia, respectively.  After that, the signal will be processed using the 5th-scale quadratic spline discrete wavelet transform. The best result was obtained on the 5th-scale. All the peaks (P, Q, R, S, and T) are clearly visible, especially on the elevation signals. The complete results of this program have been posted in the "results" folder. After that, the 5-scale decomposed ECG signal and the ECG peaks are obtained, which can be used for classification input using an artificial neural network (ANN). The ANN code is available in ANN Classifier folder.

After I have built this algorithm. Then the algorithm in this folder will be transformed into C and embedded back into microcontrollers for real-time monitoring that is available in the microcontroller code folder. Following that, I can obtain the feature-extracted ECG signal while monitoring it in real-time and obtaining the data in text format, which I can then classify using neural networks. The classification stage of neural networks is available in the ANN classifier folder. 

The neural network session for this project is still not embedded in the microcontroller so that it must be processed further using a separate device (in the computer). This project can be developed further to embed the DWT and neural network algorithms together into the microcontroller by considering the type of microcontroller chip to be used (the type of microcontroller this project is in the microcontroller's code folder).

References of this algorithm click on the links below:
1. http://juti.if.its.ac.id/index.php/juti/article/view/992
2. https://www.sciencedirect.com/science/article/abs/pii/S016926079701780X
3. https://ieeexplore.ieee.org/abstract/document/5412588
4. https://ieeexplore.ieee.org/abstract/document/1275572
