clc;
close all 
n=input('Number of points: ');
x=rand(n,1);
y=rand(n,1);
figure('color','white');
hold all

axis square;
x1=x-0.0;
y1=y-0.0; %cirle has centre at (0.0,0.0)
r=x1.^2+y1.^2; % equation of circle
m=0;   %Number of points inside circle
for i=1:n
    if r(i)<=0.25
        m=m+1;
        plot(x(i),y(i),'g.');
    else

        plot(x(i),y(i),'b.');
    end
end
pie=m/(0.25*n)