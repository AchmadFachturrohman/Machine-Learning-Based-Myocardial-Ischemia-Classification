# Discrete-Wavelet-Transform-to-ECG-Peaks-Detections

This is my multi-resolution, discrete wavelet transform to detect peak ECG waves in patients with myocardial ischemia. The algorithm is built by using a dataset from Physionet [MIT-BIH Normal](https://archive.physionet.org/cgi-bin/atm/ATM) and [MIT-BIH ST Change](https://archive.physionet.org/cgi-bin/atm/ATM), for normal and ischemia, respectively. The output of this algorithm is the value of the five filter coefficients, the signal decomposition value, and the temporary peak. Based on the trials I conducted with the dataset, the best result was the 5th filter coefficient.

- Comparison results of each decomposition with MIT-BIH ST-Change 300 ![compare decomposition](https://user-images.githubusercontent.com/80017569/233277453-3e4bef4e-db0b-4dc7-9ac7-ab1a3ede989d.png)

Therefore, the 5th filter coefficient value and DWT algorithm are embedded into the microcontroller for the data recording process directly with the ECG signal generator. My first step to embed this DWT algorithm into a microcontroller is to translate from Pascal to C. What needs to be translated is just the 5th decomposition part.

After that, I validated the DWT capability that has been embedded into the microcontroller by taking raw data from the ECG signal generator directly and recording it for 2-6 minutes. Then I processed it with the DWT algorithm that I had created. Then I compared the recording from the embedded DWT with the calculation result of this algorithm using excel. after it was confirmed that the results of both were similar. The next step is to record data using a microcontroller by taking embedded DWT decomposition data and creating a dataset for training the model.
