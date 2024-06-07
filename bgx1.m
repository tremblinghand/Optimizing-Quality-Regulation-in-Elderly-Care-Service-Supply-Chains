clear all;
clc;

% 固定参数赋值
a = 0.7;
q = 0.5;
c1 = 0.3;
c2 = 0.5;
m1 = 0.3;
m2 = 0.4;
m3 = 0.5;
f1 = 0.7;
f2 = 0.9;
f3 = 0.6;
t1 = 0.5;
t2 = 0.2;
t3 = 0.45;
n = 100;

% 设置图像大小
figure('Position', [100, 100, 1200, 800]);
hold on;
set(gcf, 'color', 'w');

subplot(2, 2, 1);
hold on;

% 第一个情形：质量问题的负面影响对结果的影响
b = 0:0.05:1;
g = 0.2; r = 0.5; e = 0.2; x = 0.2;

p1 = (1 / 3) * (2 - 2 * ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) + m1 + c1)+b-b;
p2 = (1 / 3) * (2 - 2 * (-f2 * (r + e) + t2 * x) + m2 + c2)+b-b;
p3 = (1 / 2) * (1 - ((1 - q) * (b + g) - f3 * (r + e) + t3 * x) + m3)+b-b;
w1 = (1 / 3) * (1 - ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) - m1 + 2 * c1)+b-b;
w2 = (1 / 3) * (1 - (-f2 * (r + e) + t2 * x) - m2 + 2 * c2)+b-b;


plot(b, p1, 'r-o', 'LineWidth', 1.5);
plot(b, p2, 'r-+', 'LineWidth', 1.5);
plot(b, p3, 'r->', 'LineWidth', 1.5);
plot(b, w1, 'r-*', 'LineWidth', 1.5);
plot(b, w2, 'r-s', 'LineWidth', 1.5);

% 第三个情形：不确定因素产生的环境变量
b = 0.6; r = 0.5; e = 0.2; x = 0.2;
g = 0:0.05:1;

p1 = (1 / 3) * (2 - 2 * ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) + m1 + c1)+g-g;
p2 = (1 / 3) * (2 - 2 * (-f2 * (r + e) + t2 * x) + m2 + c2)+g-g;
p3 = (1 / 2) * (1 - ((1 - q) * (b + g) - f3 * (r + e) + t3 * x) + m3)+g-g;
w1 = (1 / 3) * (1 - ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) - m1 + 2 * c1)+g-g;
w2 = (1 / 3) * (1 - (-f2 * (r + e) + t2 * x) - m2 + 2 * c2)+g-g;


plot(g, p1, 'b-o', 'LineWidth', 1.5);
plot(g, p2, 'b-+', 'LineWidth', 1.5);
plot(g, p3, 'b->', 'LineWidth', 1.5);
plot(g, w1, 'b-*', 'LineWidth', 1.5);
plot(g, w2, 'b-s', 'LineWidth', 1.5);

% 第五个情形：搜索时间带来的负面影响
b = 0.6; g = 0.2; r = 0.5; e = 0.2;
x = 0:0.05:1;

p1 = (1 / 3) * (2 - 2 * ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) + m1 + c1)+x-x;
p2 = (1 / 3) * (2 - 2 * (-f2 * (r + e) + t2 * x) + m2 + c2)+x-x;
p3 = (1 / 2) * (1 - ((1 - q) * (b + g) - f3 * (r + e) + t3 * x) + m3)+x-x;
w1 = (1 / 3) * (1 - ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) - m1 + 2 * c1)+x-x;
w2 = (1 / 3) * (1 - (-f2 * (r + e) + t2 * x) - m2 + 2 * c2)+x-x;


plot(x, p1, 'k-o', 'LineWidth', 1.5);
plot(x, p2, 'k-+', 'LineWidth', 1.5);
plot(x, p3, 'k->', 'LineWidth', 1.5);
plot(x, w1, 'k-*', 'LineWidth', 1.5);
plot(x, w2, 'k-s', 'LineWidth', 1.5);

xlabel('参数变化', 'FontSize', 12);
ylabel('最优价格', 'FontSize', 12);

% 创建虚拟线条用于图例
h1 = plot(NaN, NaN, 'r-', 'LineWidth', 1.5, 'DisplayName', 'b');
h2 = plot(NaN, NaN, 'b-', 'LineWidth', 1.5, 'DisplayName', 'g');
h3 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', 'x');

h4 = plot(NaN, NaN, 'k-o', 'LineWidth', 1.5, 'DisplayName', 'p1');
h5 = plot(NaN, NaN, 'k-+', 'LineWidth', 1.5, 'DisplayName', 'p2');
h6 = plot(NaN, NaN, 'k->', 'LineWidth', 1.5, 'DisplayName', 'p3');
h7 = plot(NaN, NaN, 'k-*', 'LineWidth', 1.5, 'DisplayName', 'w1');
h8 = plot(NaN, NaN, 'k-s', 'LineWidth', 1.5, 'DisplayName', 'w2');

% 设置图例
legend([h1, h2, h3, h4, h5, h6, h7, h8], 'NumColumns', 3, 'Location', 'best');

grid on;
box on;
hold off;



subplot(2, 2, 2);
hold on;

% 第一个情形：质量问题的负面影响对结果的影响
b = 0:0.05:1;
g = 0.2; r = 0.5; e = 0.2; x = 0.2;

s1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
s2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+b-b;
s3=(1/4)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);
i1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
i2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+b-b;


plot(b, s1, 'r-o', 'LineWidth', 1.5);
plot(b, s2, 'r-+', 'LineWidth', 1.5);
plot(b, s3, 'r->', 'LineWidth', 1.5);
plot(b, i1, 'r-*', 'LineWidth', 1.5);
plot(b, i2, 'r-s', 'LineWidth', 1.5);

% 第三个情形：不确定因素产生的环境变量
b = 0.6; r = 0.5; e = 0.2; x = 0.2;
g = 0:0.05:1;

s1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
s3=(1/4)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);
s2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+g-g;
i1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
i2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+g-g;


plot(g, s1, 'b-o', 'LineWidth', 1.5);
plot(g, s2, 'b-+', 'LineWidth', 1.5);
plot(g, s3, 'b->', 'LineWidth', 1.5);
plot(g, i1, 'b-*', 'LineWidth', 1.5);
plot(g, i2, 'b-s', 'LineWidth', 1.5);

% 第五个情形：搜索时间带来的负面影响
b = 0.6; g = 0.2; r = 0.5; e = 0.2;
x = 0:0.05:1;

s1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
s2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
s3=(1/4)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);
i1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
i2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);


plot(x, s1, 'k-o', 'LineWidth', 1.5);
plot(x, s2, 'k-+', 'LineWidth', 1.5);
plot(x, s3, 'k->', 'LineWidth', 1.5);
plot(x, i1, 'k-*', 'LineWidth', 1.5);
plot(x, i2, 'k-s', 'LineWidth', 1.5);

xlabel('参数变化', 'FontSize', 12);
ylabel('最优价格', 'FontSize', 12);

% 创建虚拟线条用于图例
h1 = plot(NaN, NaN, 'r-', 'LineWidth', 1.5, 'DisplayName', 'b');
h2 = plot(NaN, NaN, 'b-', 'LineWidth', 1.5, 'DisplayName', 'g');
h3 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', 'x');

h4 = plot(NaN, NaN, 'k-o', 'LineWidth', 1.5, 'DisplayName', 's1');
h5 = plot(NaN, NaN, 'k-+', 'LineWidth', 1.5, 'DisplayName', 's2');
h6 = plot(NaN, NaN, 'k->', 'LineWidth', 1.5, 'DisplayName', 's3');
h7 = plot(NaN, NaN, 'k-*', 'LineWidth', 1.5, 'DisplayName', 'i1');
h8 = plot(NaN, NaN, 'k-s', 'LineWidth', 1.5, 'DisplayName', 'i2');

% 设置图例
legend([h1, h2, h3, h4, h5, h6, h7, h8], 'NumColumns', 3, 'Location', 'best');

grid on;
box on;
hold off;

subplot(2, 2, 3);
hold on;

% 第一个情形：质量问题的负面影响对结果的影响
b = 0:0.05:1;
g = 0.2; r = 0.5; e = 0.2; x = 0.2;

CS1=(1/18)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
CS2=(1/18)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+b-b;
CS3=(1/8)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);

plot(b, CS1, 'r-o', 'LineWidth', 1.5);
plot(b, CS2, 'r-+', 'LineWidth', 1.5);
plot(b, CS3, 'r->', 'LineWidth', 1.5);

% 第三个情形：不确定因素产生的环境变量
b = 0.6; r = 0.5; e = 0.2; x = 0.2;
g = 0:0.05:1;

CS1=(1/18)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
CS2=(1/18)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+g-g;
CS3=(1/8)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);

plot(g, CS1, 'b-o', 'LineWidth', 1.5);
plot(g, CS2, 'b-+', 'LineWidth', 1.5);
plot(g, CS3, 'b->', 'LineWidth', 1.5);

% 第五个情形：搜索时间带来的负面影响
b = 0.6; g = 0.2; r = 0.5; e = 0.2;
x = 0:0.05:1;

CS1=(1/18)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
CS2=(1/18)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
CS3=(1/8)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);

plot(x, CS1, 'k-o', 'LineWidth', 1.5);
plot(x, CS2, 'k-+', 'LineWidth', 1.5);
plot(x, CS3, 'k->', 'LineWidth', 1.5);


xlabel('参数变化', 'FontSize', 12);
ylabel('最优价格', 'FontSize', 12);

% 创建虚拟线条用于图例
h1 = plot(NaN, NaN, 'r-', 'LineWidth', 1.5, 'DisplayName', 'b');
h2 = plot(NaN, NaN, 'b-', 'LineWidth', 1.5, 'DisplayName', 'g');
h3 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', 'x');

h4 = plot(NaN, NaN, 'k-o', 'LineWidth', 1.5, 'DisplayName', 'CS1');
h5 = plot(NaN, NaN, 'k-+', 'LineWidth', 1.5, 'DisplayName', 'CS2');
h6 = plot(NaN, NaN, 'k->', 'LineWidth', 1.5, 'DisplayName', 'CS3');


% 设置图例
legend([h1, h2, h3, h4, h5, h6], 'NumColumns', 2, 'Location', 'best');

grid on;
box on;
hold off;

subplot(2, 2, 4);
hold on;

% 第一个情形：质量问题的负面影响对结果的影响
b = 0:0.05:1;
g = 0.2; r = 0.5; e = 0.2; x = 0.2;

SW1=(1/18)*5*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
SW2=(1/18)*5*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+b-b;
SW3=(1/8)*3*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);
plot(b, SW1, 'r-o', 'LineWidth', 1.5);
plot(b, SW2, 'r-+', 'LineWidth', 1.5);
plot(b, SW3, 'r->', 'LineWidth', 1.5);

% 第三个情形：不确定因素产生的环境变量
b = 0.6; r = 0.5; e = 0.2; x = 0.2;
g = 0:0.05:1;

SW1=(1/18)*5*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
SW2=(1/18)*5*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2)+g-g;
SW3=(1/8)*3*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);

plot(g, SW1, 'b-o', 'LineWidth', 1.5);
plot(g, SW2, 'b-+', 'LineWidth', 1.5);
plot(g, SW3, 'b->', 'LineWidth', 1.5);

% 第五个情形：搜索时间带来的负面影响
b = 0.6; g = 0.2; r = 0.5; e = 0.2;
x = 0:0.05:1;

SW1=(1/18)*5*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
SW2=(1/18)*5*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
SW3=(1/8)*3*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);

plot(x, SW1, 'k-o', 'LineWidth', 1.5);
plot(x, SW2, 'k-+', 'LineWidth', 1.5);
plot(x, SW3, 'k->', 'LineWidth', 1.5);


xlabel('参数变化', 'FontSize', 12);
ylabel('最优价格', 'FontSize', 12);

% 创建虚拟线条用于图例
h1 = plot(NaN, NaN, 'r-', 'LineWidth', 1.5, 'DisplayName', 'b');
h2 = plot(NaN, NaN, 'b-', 'LineWidth', 1.5, 'DisplayName', 'g');
h3 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', 'x');

h4 = plot(NaN, NaN, 'k-o', 'LineWidth', 1.5, 'DisplayName', 'SW1');
h5 = plot(NaN, NaN, 'k-+', 'LineWidth', 1.5, 'DisplayName', 'SW2');
h6 = plot(NaN, NaN, 'k->', 'LineWidth', 1.5, 'DisplayName', 'SW3');


% 设置图例
legend([h1, h2, h3, h4, h5, h6], 'NumColumns', 2, 'Location', 'best');

grid on;
box on;
hold off;