A = imread('cross1.jpg');
B = imread('cross2.jpg');

for r=0:0.03:1
   
    D = (((1-r) * A)+((r) * B));
   imshow(D)

end


