img = imread('islamic1.jpg');
img1 = rgb2gray(img);
img1(img1 >=128) = 255;
img1(img1 < 128) = 0;
imshow(img1)


