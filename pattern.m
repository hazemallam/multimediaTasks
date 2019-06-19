im = imread('islamic1.jpg');
pat = rgb2gray(im);
p1 = [0,0;0,0];
p2 = [0,255;0,0];
p3 = [0,255;255,0];
p4 = [255,255;255,0];
p5 = [255,255;255,255];
im1 = pat;
for x=1:2:693-1
    for y=1:2:500-1
        z=pat(x:x+1, y:y+1); 
        mean_ = mean2(z);
        if mean_ <51 
            z = p1;
        elseif mean_ >= 51 && mean_ < 102
            z = p2;
        elseif mean_ >= 102 && mean_ < 153
            z = p3;
        elseif mean_ >= 153 && mean_ < 204
            z = p4;
        else
            z = p5;
        end
            im1(x:x+1, y:y+1) = z;
    end
end
 imshow(im1)
 disp(im1)
   
 