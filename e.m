clear all;
clc;

%固定参数赋值%
a=0.6;
q=0.3;
c1=0.3;
c2=0.4;
m1=0.03;
m2=0.04;
m3=0.05;
f1=0.3;
f2=0.9;
f3=0.1;
t1=0.5;
t2=0.1;
t3=0.9;
n=100;

%1.质量问题的负面影响对结果的影响 先给参数赋值%
b=0.6;g=0.3;r=0.4;x=0.1;

%参数设置完成，开始带入公式%
e=0:0.1:1;
p1=(1/3)*(2-2*((1-a)*(b+g)-f1*(r+e)+t1*x)+m1+c1);
w1=(1/3)*(1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1+2*c1);
p2=(1/3)*(2-2*(-f2*(r+e)+t2*x)+m2+c2);
w2=(1/3)*(1-(-f2*(r+e)+t2*x)-m2+2*c2);
p3=(1/2)*(1-((1-q)*(b+g)-f3*(r+e)+t3*x)+m3);
plot(e,p1,e,w1,e,p2,e,w2,e,p3);
hold on;
%yline(p2,'-','p2');
%yline(w2,'-','w2');
text(e,p1,'p1');
text(e,p2,'p2');
text(e,p3,'p3');
text(e,w1,'w1');
text(e,w2,'w2');
%legend("p1","w1","p2","w2","p3");%
hold off;

%% 
clear all;
clc;

%固定参数赋值%
a=0.6;
q=0.3;
c1=0.3;
c2=0.4;
m1=0.03;
m2=0.04;
m3=0.05;
f1=0.3;
f2=0.9;
f3=0.1;
t1=0.5;
t2=0.1;
t3=0.9;
n=100;

b=0.6;g=0.3;r=0.4;x=0.1;
e=0:0.1:1;

%2.对pi的影响%
s1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
i1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
s2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
i2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
s3=(1/4)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);
plot(e,s1,e,i1,e,s2,e,i2,e,s3);
hold on;
%yline(s2,'-','s2');
text(e,i1,'i1');
text(e,s2,'s2');
text(e,i2,'i2');
%yline(i2,'-','i2');
text(e,s1,'s1');
text(e,s3,'s3');
hold off;



%% 
clear all;
clc;

%固定参数赋值%
a=0.6;
q=0.3;
c1=0.3;
c2=0.4;
m1=0.03;
m2=0.04;
m3=0.05;
f1=0.3;
f2=0.9;
f3=0.1;
t1=0.5;
t2=0.1;
t3=0.9;
n=100;

b=0.6;g=0.3;r=0.4;x=0.1;
e=0:0.1:1;


CS1=(1/18)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
CS2=(1/18)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
CS3=(1/8)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);
plot(e,CS1,e,CS2,e,CS3);
hold on;
%yline(CS2,'-','CS2');
text(e,CS1,'CS1');
text(e,CS2,'CS2');
text(e,CS3,'CS3');
hold off;


%% 
clear all;
clc;

%固定参数赋值%
a=0.6;
q=0.3;
c1=0.3;
c2=0.4;
m1=0.03;
m2=0.04;
m3=0.05;
f1=0.3;
f2=0.9;
f3=0.1;
t1=0.5;
t2=0.1;
t3=0.9;
n=100;

b=0.6;g=0.3;r=0.4;x=0.1;
e=0:0.1:1;


SW1=(1/18)*5*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
SW2=(1/18)*5*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
SW3=(1/8)*3*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);
plot(e,SW1,e,SW2,e,SW3);
hold on;
%yline(SW2,'-','SW2');
text(e,SW1,'SW1');
text(e,SW2,'SW2');
text(e,SW3,'SW3');
hold off;
