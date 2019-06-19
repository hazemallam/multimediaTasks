image = imread('islamic1.jpg');
image1 = rgb2gray(image);
for r=1:1:693
    for c=1:1:500
        if image1(r,c) >= 128
            o(r,c)=255;
        else
            o(r,c)=0;
        end
       error = image1(r,c)-o(r,c);
  
     if(c < 500)
           image1(r,c+1) =  (image1(r,c+1)+(7/16 *error)); 
     end
      if(r<693 && c > 1)
        image1(r+1,c-1) = image1(r+1,c-1) + (3/16 *error);
        image1(r+1,c) = image1(r+1,c) + (5/16 *error);
      end
       if(c<500 && r< 693)
           image1(r+1,c+1) = image1(r+1,c+1) + (1/16 *error);
       end
    end
end
imshow(o)


       