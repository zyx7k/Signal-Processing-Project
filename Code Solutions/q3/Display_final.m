function Display_final(one,two,three,four)

maximum_val = max([one,two,three,four]);

if(maximum_val==one)
    disp('The noise present in the sound is of: Ceiling Fan');
elseif(maximum_val==two)
    disp('The noise present in the sound is of: Pressure Cooker');
elseif(maximum_val==three)
    disp('The noise present in the sound is of: Water Pump');
elseif(maximum_val==four)
    disp('The noise present in the sound is of: City Traffic');
    
end