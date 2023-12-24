function maximum = Detect(input,h)

h_new = flipud(h);

input = input(:);
h_new = h_new(:);

output = conv(input,h_new,'valid');
maximum = max(output);

end
