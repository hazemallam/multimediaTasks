x = [10, 0, 15, 10];
y = [10, 10, 25, 10];
x1 = x * cos(90)  - y *sin (90);
y1 = y *cos (90) + x *sin (90);
plot(x,y,x1,y1)