RGB = imread('islamic1.jpg');
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);
Y = 0.299 * R + 0.587 * G + 0.114 * B;
%U = -0.147 * R - 0.289* G + 0.436 * B;
%V = 0.615 * R - 0.515 * G - 0.100 * B;
U = (0.436*(B - Y))/(1 - 0.114);
V = (0.615 *( R - Y))/(1 - 0.299);                                                       
YUV = cat(3,Y,U,V);

imshow(YUV)
