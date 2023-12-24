[y,fs]=audioread('q1_hard.wav');

% t = (0:length(y)-1) / fs;
% sound(y,fs);
% plot(t,y);
% output=echo_gen(y,fs,0.5,0.8);

[output,del1,del2,del3,del4]=echo_produce(y,fs,0.4,0.8,0.8,0.4,1.2,0.2,1.6,0.1);
 
sound(output,fs);
to=(0:length(output)-1) / fs;
% plot(to,output);

subplot(5,1,1);
plot(y);
subplot(5,1,2);
plot(del1);
subplot(5,1,3);
plot(del2);
subplot(5,1,4);
plot(del3);
subplot(5,1,5);
plot(del4);


