clear all
n=24000 % number of iterations
a=[0 0.85 0.2 -0.15]
b=[0 0.04 -0.26 0.28]
c=[0 -0.04 0.23 0.26]
d=[0.16 0.85 0.22 0.24]
e=[0 0 0 0]
f=[0 1.6 1.6 0.44]
x(1)=0;
y(1)=0;
j=0;
for i=1:n
prob=rand;
if prob<0.01
j=1;
elseif prob>0.01 && prob<0.86
j=2;
elseif prob>0.86 && prob<0.93
j=3;
else
j=4;
end
x(i+1)=a(j)*x(i)+b(j)*y(i)+e(j);
y(i+1)=c(j)*x(i)+d(j)*y(i)+f(j);     
end
plot(x,y,'.','MarkerSize',3)