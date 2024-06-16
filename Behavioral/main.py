import numpy as np
import matplotlib.pyplot as plt
import math


def fft_radix2(x):
    N = len(x)
    if N == 1:
        return [x[0]]
    X = [0] * N
    even = fft_radix2(x[:N:2])
    odd = fft_radix2(x[1:N:2])
    for k in range(N // 2):
        w = math.e ** (-2j * math.pi * k / N)
        X[k] = even[k] + w * odd[k]
        X[k + N // 2] = even[k] - w * odd[k]
    return X


fs = 2**10  # Sampling frequency
dt = 1/fs  # Sampling interval
# Generate timestamps of samples
t = np.arange(0, 1, dt)
# Generate white noise signal
x = np.random.randn(*t.shape)
# Compute DFT using that implementation
X = fft_radix2(x)
# Compute DFT using reference implementation from numpy
X_ref = np.fft.fft(x)
# Error between that implementation and reference implementation
X_err = np.abs(X - X_ref)**2
# RMSE
X_RMSE = np.sqrt(np.mean(X_err))
print('RMSE:', np.round(X_RMSE, 15))
print('Your FFT implementation succeeded' if X_RMSE < 1e-10 else 'That RMSE is too big')
fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(10, 4))
ax.plot(X_err)
ax.set_ylabel('Frequency bin error')
ax.set_xlabel('Frequency bin')
plt.grid()
plt.show()