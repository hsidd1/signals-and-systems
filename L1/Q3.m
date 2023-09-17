% read the image into a matrix
img = imread('ee3tp3picture2023.jpg');

% extract RGB channels
red_ch = img(:,:,1);
green_ch = img(:,:,2);
blue_ch = img(:,:,3);

% scale red and green channels
red_ch = red_ch .* 5.5;
green_ch = green_ch .* 5.2;

% reconstruct new image with scaled channels
reconstructed_img = cat(3, red_ch, green_ch, blue_ch);
imshow(reconstructed_img);

imwrite(reconstructed_img, 'images/Q3/reconstructed_img.jpg');