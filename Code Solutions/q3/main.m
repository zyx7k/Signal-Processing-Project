file_path = 'music_water-pump.wav';
[input_audio_file, fs] = audioread(file_path);

[test_ceiling_fan] = audioread('aa_ceiling-fan.wav');
[test_pressure_cooker] = audioread('aa_pressure-cooker.mp3');
[test_water_pump] = audioread('aa_water-pump.mp3');
[test_city_traffic] = audioread('aa_city-traffic.mp3');


mcf = Detect(input_audio_file, test_ceiling_fan);
fprintf('The correlation with the Fan noise is %f\n', mcf);

mpc = Detect(input_audio_file, test_pressure_cooker);
fprintf('The correlation with the Pressure Cooker noise is %f\n', mpc);

mwp = Detect(input_audio_file, test_water_pump);
fprintf('The correlation with the Water Pump noise is %f\n', mwp);

mct = Detect(input_audio_file, test_city_traffic);
fprintf('The correlation with the City Traffic noise is %f\n\n', mct);

Display_final(mcf,mpc,mwp,mct);S
