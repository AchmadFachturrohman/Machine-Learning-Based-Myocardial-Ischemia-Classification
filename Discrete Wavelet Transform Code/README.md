# Discrete-Wavelet-Transform-to-ECG-Peaks-Detections

This is my multi-resolution, discrete wavelet transform to detect peak ECG waves in patients with myocardial ischemia. The input signals are ECG signals, such as an ECG rate of 60 beats per minute (normal) and ST-wave elevation and depression (ischemia). Also included are the Physionet [MIT-BIH Normal](https://archive.physionet.org/cgi-bin/atm/ATM) and [MIT-BIH ST Change datasets](https://archive.physionet.org/cgi-bin/atm/ATM), for normal and ischemia, respectively.  After that, the signal will be processed using the 5th-scale quadratic spline discrete wavelet transform. The best result was obtained on the 5th-scale. All the peaks (P, Q, R, S, and T) are clearly visible, especially on the elevation signals. The complete results of this program have been posted in the "results" folder. After that, the 5-scale decomposed ECG signal and the ECG peaks are obtained, which can be used for classification input using an artificial neural network (ANN). The ANN code is available in ANN Classifier folder.

Then, the code in this folder will be transformed into C and embedded into microcontrollers for real-time monitoring that available in Microcontroller code folder

References of this algorithm click on the links below:
1. http://juti.if.its.ac.id/index.php/juti/article/view/992
2. https://www.sciencedirect.com/science/article/abs/pii/S016926079701780X
3. https://ieeexplore.ieee.org/abstract/document/5412588
4. https://ieeexplore.ieee.org/abstract/document/1275572
