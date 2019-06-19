d = imread('cross1.jpg');
c = imread('cross2.jpg');
e = rgb2gray(d);
f = rgb2gray(c);
rond =round( 255*.3);

for row=1:255
    for col=1:255
        d(row:(row+rond), :) = c(row:(row+rond), :);
       
    end
     imshow(d)
end