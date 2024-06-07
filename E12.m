%% 
clear all;
clc;

%固定参数赋值%
a=0.7;
q=0.5;
c1=0.3;
c2=0.5;
m1=0.3;
m2=0.4;
m3=0.5;
f1=0.7;
f2=0.9;
f3=0.6;
t1=0.5;
t2=0.2;
t3=0.45;
n=100;

g=0.2;r=0.5;e=0.2;x=0.2;b=0.6;
E=0:0.15:3;

y1=1-(1-a)*(b+g)+f1*(r+e)-t1*x-m1-c1;
y2=1+f2*(r+e)-t2*x-m2-c2;
y3=1-(1-q)*(b+g)+f3*(r+e)-t3*x-m3;

%2.对pi的影响%
s1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2)+E-E;
i1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2)+E-E;
s2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+b-b+E-E;
i2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+b-b-E;
s3=(1/4)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2)+E-E;

plot(E,i1,'r-o',E,i2,'b-+');
%plot(E,s1,'k-+',E,i1,'r-o',E,s2,'k-o',E,i2,'b-+',E,s3,'k->');
%plot(b,p1,'k-o',b,p2,'k-+',b,p3,'k->',b,w1,'r-o',b,w2,'b-+');
hold on;

title({'Impact of building costs changes '}, 'Interpreter', 'none', 'HorizontalAlignment', 'center');


xlabel('Building Costs\it E');
ylabel('\it \pi');
%yline(s2,'-','s2');
%text(b,i1,'i1');
%yline(i2,'-','i2');
%text(b,s1,'s1');
%text(b,s3,'s3');
grid on;
enableservice('AutomationServer',true);
box on;
legend("\it \pi_{I}^{1}","\it \pi_{I}^{2}");

%enableservice('AutomationServer',true);

%legend("\it \pi_{S}^{1}","\it \pi_{I}^{1}","\it \pi_{S}^{2}","\it \pi_{I}^{2}","\it \pi_{S}^{3}");
hold off;


exportgraphics(gcf, 'E12.pdf', 'Resolution', 1200);