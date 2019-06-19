img = imread('islamic1.jpg');
img2 = rgb2gray(img);
thresholdMatrix = [0 128 32 160; 192 64 224 96; 48 176 16 144; 240 112 208 80];
                                                           
 o=img2;                                                                                                                    
    for x=1:693
        for y=1:500
            i =  mod(x-1,4)+1;
            j =  mod(y-1,4)+1;
            if img2(x,y)> thresholdMatrix(i,j)
                o(x,y)=255;
            else
                o(x,y)=0;
            end
        end
    end
                
   imshow(o)
               
       