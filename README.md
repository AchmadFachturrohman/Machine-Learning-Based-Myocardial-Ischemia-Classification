# Discrete-Wavelet-Transform-to-ECG-Peaks-Detections

This program is the result of my research to detect peak ECG waves from patients with myocardial ischemia. 
The input signals are recorded ECG signal, such as ECG Rate 60 BPM as Normal and ST-Wave elevation and depression as Ischemia. Also the datasets from Physionet [MIT-BIH Normal](https://archive.physionet.org/cgi-bin/atm/ATM) as normal and [MIT-BIH ST Change](https://archive.physionet.org/cgi-bin/atm/ATM) as Ischemia. After that signal will be process using 5 scales of Quadratic Spline Discrete Wavelet Transform. The best result obtained in the 5th scales. On there all peaks (P,Q,R,S,T) are clearly detected. Especially on the elevation signals. The complete results of this program has been posted in the "result" folder.

References of this algorithm click on the links below:
1. http://juti.if.its.ac.id/index.php/juti/article/view/992
2. https://www.sciencedirect.com/science/article/abs/pii/S016926079701780X
3. https://ieeexplore.ieee.org/abstract/document/5412588
4. https://ieeexplore.ieee.org/abstract/document/1275572

After that, 5th scale of decomposed ECG signal and the ECG peaks is obtained which can be used for classification input using an Artificial Neural Network (ANN). The code you can find in "Classification using ANN"
