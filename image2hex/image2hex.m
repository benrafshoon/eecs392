function image2hex()

[input_filename, pathname, filter_index] = uigetfile('*');
if(filter_index == 0)
    return
end

splitfile = strsplit(input_filename, '.');
if(length(splitfile) > 1)
    splitfile = splitfile(1:end-1);
end

splitfile{length(splitfile) + 1} = 'hex';

output_filename = strjoin(splitfile, '.');

image = imresize(rgb2gray(imread(strcat(pathname, input_filename))), [480, 640]);

file = fopen(strcat(pathname, output_filename), 'w+');
for y = 1:size(image, 1)
    for x = 1:size(image, 2)
        fprintf(file, '00%02X\n', image(y, x));
    end
end

fclose(file);
