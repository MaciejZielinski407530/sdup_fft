close all
clear
clc

N = 256;
n = 0:N-1;
input = cos(2 * pi * n / N * 4) + sin(2 * pi * n / N * 14);

figure(1);
plot(input);
hold on;

twiddle = zeros(N - 1, 1); %always N-1 twiddles

k = 2; % partial FFT size = bottom twiddle index
m = 0; % top twiddle index
t = 1; % twiddle table index

% calculate twiddles
while k <= N
    m = 0;
    while m < (k / 2)
        twiddle(t) = exp(-2i*pi*m/k);
        t = t + 1;
        m = m + 1;
    end
    k = k * 2;
end

input = bitrevorder(input); %reverse bits in input vector indices and return modified input vector

k = 2; % bottom twiddle index = current partial FFT size
while k <= N % loop for all butterfly diagram stages
    i = 0; %current input sample index
    while i < N
        m = 0; % top twiddle index = current step in this partial FFT
        while m < (k / 2)
           % do the "cross" calculation
           x = input(i + m + 1); %store original upper branch value temporarily
           % multiply bottom branch by the twiddle
           input(i + k / 2 + m + 1) = input(i + k / 2 + m + 1) * twiddle(k / 2 - 1 + m + 1);
           % add bottom branch multiplied by the twiddle to the upper branch
           input(i + m + 1) = input(i + m + 1) + input(i + k / 2 + m + 1);
           % add original upper branch to negated bottom branch (multiplied
           % by the twiddle earlier)
           input(i + k / 2 + m + 1) = x - input(i + k / 2 + m + 1);
           m = m + 1;
           t = t + 1;
        end
        i = i + k;
    end
    k = k * 2;
end

figure(2)
plot(abs(input));