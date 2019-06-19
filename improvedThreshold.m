img2 = imread('islamic1.jpg');
img3 = rgb2gray(img2);
imgMean = mean2(img3);
img3(img3 >= imgMean) = 255;
img3(img3 < imgMean) = 0;
imshow(img3)

