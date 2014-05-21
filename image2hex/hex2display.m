function hex2display()

[input_filename, pathname, filter_index] = uigetfile('*.hex');
if(filter_index == 0)
    return
end

file = fopen(strcat(pathname, input_filename), 'r');

array = fscanf(file, '00%02X\n', [1 Inf]);

fclose(file);

matrix = transpose(reshape(array, [640, 480]));

imshow(matrix, 'DisplayRange', [0, 255]);

imwrite(uint8(matrix), 'output.hex.png');