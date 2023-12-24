[y, fs] = audioread("q2_easy.wav");
% sound(y, fs);

y = y/max(y);

[peak, locate] = xcorr(y, y);
peak = peak(locate > 0);
locate = locate(locate > 0);
figure();
plot(peak);
currInd = 1: length(peak);
ind = find_peak_indices(peak, currInd);
newInd = ind;

while numel(newInd) > 1
    ind = newInd;
    newInd = find_peak_indices(peak, ind);
end
disp(ind);

peaks=peak(ind);

npeaks=peaks/max(peak);
num=zeros(1,length(y));
num(1)=1;
for k=2:length(ind)
    num(ind(k)+1)=npeaks(k);
end
filtpeaks=filter(1,num,y);
figure;
plot(1:length(filtpeaks),filtpeaks);
sound(filtpeaks, fs);

audiowrite("q2_output_easy.wav",filtpeaks,fs);