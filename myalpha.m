b1 = imread('ba.jpg');
f1 = imread ('re.jpg');
al1= imread ('pha.jpg');
final =b1;

[w,h]=size(final);
for r=1:w
    for c=1:h
        final(r,c)=f1(r,c) * (al1(r,c)/255)+b1(r,c)*(1-(al1(r,c)/255));
    end
end
imshow(final)