RGB = imread('islamic1.jpg');
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);
Y = 0.299 * R + 0.587 * G + 0.114 * B;
%U = -0.147 * R - 0.289* G + 0.436 * B;
%V = 0.615 * R - 0.515 * G - 0.100 * B;
U = (0.436*(B - Y))/(1 - 0.114);
V = (0.615 *( R - Y))/(1 - 0.299);         
[x,y]=size(U);
su = zeros(x,y/2, class(U));
[rnew, cnew] = size(su);
[w,h]=size(V);
sv = zeros(w,h/2, class(V));
[wnew, hnew] = size(sv);
for i=1:rnew
    for j=1:cnew
        %a = 2*(i-1) + 1;
        b = 2*(j-1) + 1;
        su(i,j) = U(i,b);
        
        
    end
end

for s=1:wnew
    for n=1:hnew
        nw = 2*(n-1) + 1;
        sv(s,n) = V(s,nw);
         
        
    end
end
%imshow(Y)
%imshow(su)
imshow(sv)