# Discrete-Wavelet-Transform-to-ECG-Peaks-Detections

This program is the result of my research to detect peak ECG waves from patients with myocardial ischemia. 
The data used to create the algorithm comes from recording using a microcontroller, [Mikromedia 4 for STM32F4] (https://mikroe.com/mikromedia-4-for-stm32-capacitive), [ECG Click](https://www.mikroe.com/ecg-click) and [USB UART Click](https://www.mikroe.com/usb-uart-click) to grab and recording the signals. Then the input signals are ECG Rate 60 BPM as Normal and ST-Wave elevation and depression as Ischemia from [Multiparameter simulator MS400](https://contechealth.com/products/ms400-multiparameter-simulator). Also datasets from Physionet MIT-BIH Normal as normal and MIT-BIH ST Change as Ischemia.
You can see the results of this program in the "result" folder. 

while for references from this research you can read and find out in this link:
1. http://juti.if.its.ac.id/index.php/juti/article/view/992
2. https://www.sciencedirect.com/science/article/abs/pii/S016926079701780X
3. https://ieeexplore.ieee.org/abstract/document/5412588
4. https://ieeexplore.ieee.org/abstract/document/1275572

I hope this DWT program that i've made can help your works as well. Thank you
