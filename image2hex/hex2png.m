function hex2png()

[input_filename, pathname, filter_index] = uigetfile('*.hex');
if(filter_index == 0)
    return
end

file = fopen(strcat(pathname, input_filename), 'r');

array = fscanf(file, '%x\n', [1 Inf]);

fclose(file);

matrix = transpose(reshape(array, [640, 480]));

imwrite(uint8(matrix), strcat(pathname, input_filename, '.png'));