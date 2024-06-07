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

% 第二个情形：消费者信息费用差的影响
b = 0.6; g = 0.2; x = 0.2;r = 0.5;
e = 0:0.05:1;

p1 = (1 / 3) * (2 - 2 * ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) + m1 + c1);
p2 = (1 / 3) * (2 - 2 * (-f2 * (r + e) + t2 * x) + m2 + c2);
p3 = (1 / 2) * (1 - ((1 - q) * (b + g) - f3 * (r + e) + t3 * x) + m3);
w1 = (1 / 3) * (1 - ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) - m1 + 2 * c1);
w2 = (1 / 3) * (1 - (-f2 * (r + e) + t2 * x) - m2 + 2 * c2);


plot(e, p1, 'k-', 'LineWidth', 1.5, 'DisplayName', 'e');
plot(e, p2, 'k--', 'LineWidth', 1.5, 'DisplayName', '');
plot(e, p3, 'k:', 'LineWidth', 1.5, 'DisplayName', '');
plot(e, w1, 'k-o', 'LineWidth', 1, 'DisplayName', '');
plot(e, w2, 'k-+', 'LineWidth', 1, 'DisplayName', '');



% 第四个情形：养老服务预期正向效果
b = 0.6; g = 0.2; e = 0.2; x = 0.2;
r = 0:0.05:1;

p1 = (1 / 3) * (2 - 2 * ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) + m1 + c1);
p2 = (1 / 3) * (2 - 2 * (-f2 * (r + e) + t2 * x) + m2 + c2);
p3 = (1 / 2) * (1 - ((1 - q) * (b + g) - f3 * (r + e) + t3 * x) + m3);
w1 = (1 / 3) * (1 - ((1 - a) * (b + g) - f1 * (r + e) + t1 * x) - m1 + 2 * c1);
w2 = (1 / 3) * (1 - (-f2 * (r + e) + t2 * x) - m2 + 2 * c2);

%gk  mb
plot(r, p1, 'b-', 'LineWidth', 1.5, 'DisplayName', 'r');
plot(r, p2, 'b--', 'LineWidth', 1.5, 'DisplayName', '');
plot(r, p3, 'b:', 'LineWidth', 1.5, 'DisplayName', '');
plot(r, w1, 'b-o', 'LineWidth', 1, 'DisplayName', '');
plot(r, w2, 'b-+', 'LineWidth', 1, 'DisplayName', '');

title({'(a)', 'Impact of price changes'}, 'Interpreter', 'none', 'HorizontalAlignment', 'center');


xlabel('Symbol change', 'FontSize', 12);
ylabel('Best price', 'FontSize', 12);

% 创建虚拟线条用于图例
h1 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', '\it {e}');
h2 = plot(NaN, NaN, 'b-', 'LineWidth', 1.5, 'DisplayName', '\gamma');

h4 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', '\it {p}1');
h5 = plot(NaN, NaN, 'k--', 'LineWidth', 1.5, 'DisplayName', '\it {p}2');
h6 = plot(NaN, NaN, 'k:', 'LineWidth', 1.5, 'DisplayName', '\it {p}3');
h7 = plot(NaN, NaN, 'k-o', 'LineWidth', 1, 'DisplayName', '\it {w_S^1}');
h8 = plot(NaN, NaN, 'k-+', 'LineWidth', 1, 'DisplayName', '\it {w_S^2}');

% 设置图例
legend([h1, h2, h4, h5, h6, h7, h8], 'NumColumns', 2, 'Location', 'best');
grid on;
box on;
hold off;


subplot(2, 2, 2);
hold on;



% 第二个情形：消费者信息费用差的影响
b = 0.6; g = 0.2; x = 0.2;r = 0.5;
e = 0:0.05:1;

s1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
s2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
s3=(1/4)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);
i1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
i2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);


plot(e, s1, 'k-', 'LineWidth', 1.5, 'DisplayName', 'e');
plot(e, s2, 'k--', 'LineWidth', 1.5, 'DisplayName', '');
plot(e, s3, 'k:', 'LineWidth', 1.5, 'DisplayName', '');
plot(e, i1, 'k-o', 'LineWidth', 1, 'DisplayName', '');
plot(e, i2, 'k-+', 'LineWidth', 1, 'DisplayName', '');



% 第四个情形：养老服务预期正向效果
b = 0.6; g = 0.2; e = 0.2; x = 0.2;
r = 0:0.05:1;

s1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
s2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
s3=(1/4)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);
i1=(1/9)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
i2=(1/9)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);


plot(r, s1, 'b-', 'LineWidth', 1.5, 'DisplayName', 'r');
plot(r, s2, 'b--', 'LineWidth', 1.5, 'DisplayName', '');
plot(r, s3, 'b:', 'LineWidth', 1.5, 'DisplayName', '');
plot(r, i1, 'b-o', 'LineWidth', 1, 'DisplayName', '');
plot(r, i2, 'b-+', 'LineWidth', 1, 'DisplayName', '');

title({'(b)', 'Impact of profit changes '}, 'Interpreter', 'none', 'HorizontalAlignment', 'center');

xlabel('Symbol change', 'FontSize', 12);
ylabel('Best price', 'FontSize', 12);

% 创建虚拟线条用于图例
h1 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', '\it {e}');
h2 = plot(NaN, NaN, 'b-', 'LineWidth', 1.5, 'DisplayName', '\gamma');

h4 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', '\it {\pi _S^1}');
h5 = plot(NaN, NaN, 'k--', 'LineWidth', 1.5, 'DisplayName', '\it {\pi _S^2}');
h6 = plot(NaN, NaN, 'k:', 'LineWidth', 1.5, 'DisplayName', '\it {\pi _S^3}');
h7 = plot(NaN, NaN, 'k-o', 'LineWidth', 1, 'DisplayName', '\it {\pi _I^1}');
h8 = plot(NaN, NaN, 'k-+', 'LineWidth', 1, 'DisplayName', '\it {\pi _I^2}');

% 设置图例
legend([h1, h2, h4, h5, h6, h7, h8], 'NumColumns', 2, 'Location', 'best');
grid on;
box on;
hold off;

subplot(2, 2, 3);
hold on;



% 第二个情形：消费者信息费用差的影响
b = 0.6; g = 0.2; x = 0.2;r = 0.5;
e = 0:0.05:1;

CS1=(1/18)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
CS2=(1/18)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
CS3=(1/8)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);

plot(e, CS1, 'k-', 'LineWidth', 1.5, 'DisplayName', 'e');
plot(e, CS2, 'k--', 'LineWidth', 1.5, 'DisplayName', '');
plot(e, CS3, 'k:', 'LineWidth', 1.5, 'DisplayName', '');




% 第四个情形：养老服务预期正向效果
b = 0.6; g = 0.2; e = 0.2; x = 0.2;
r = 0:0.05:1;

CS1=(1/18)*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
CS2=(1/18)*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
CS3=(1/8)*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);

plot(r, CS1, 'b-', 'LineWidth', 1.5, 'DisplayName', 'r');
plot(r, CS2, 'b--', 'LineWidth', 1.5, 'DisplayName', '');
plot(r, CS3, 'b:', 'LineWidth', 1.5, 'DisplayName', '');

title({'(c)', 'The impact of consumer surplus changes '}, 'Interpreter', 'none', 'HorizontalAlignment', 'center');

xlabel('Symbol change', 'FontSize', 12);
ylabel('Best price', 'FontSize', 12);

% 创建虚拟线条用于图例
h1 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', '\it {e}');
h2 = plot(NaN, NaN, 'b-', 'LineWidth', 1.5, 'DisplayName', '\gamma');

h4 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', '\it {CS}1');
h5 = plot(NaN, NaN, 'k--', 'LineWidth', 1.5, 'DisplayName', '\it {CS}2');
h6 = plot(NaN, NaN, 'k:', 'LineWidth', 1.5, 'DisplayName', '\it {CS}3');


% 设置图例
legend([h1, h2, h4, h5, h6], 'NumColumns', 2, 'Location', 'best');
grid on;
box on;
hold off;

subplot(2, 2, 4);
hold on;



% 第二个情形：消费者信息费用差的影响
b = 0.6; g = 0.2; x = 0.2;r = 0.5;
e = 0:0.05:1;

SW1=(1/18)*5*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
SW2=(1/18)*5*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
SW3=(1/8)*3*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);

plot(e, SW1, 'k-', 'LineWidth', 1.5, 'DisplayName', 'e');
plot(e, SW2, 'k--', 'LineWidth', 1.5, 'DisplayName', '');
plot(e, SW3, 'k:', 'LineWidth', 1.5, 'DisplayName', '');




% 第四个情形：养老服务预期正向效果
b = 0.6; g = 0.2; e = 0.2; x = 0.2;
r = 0:0.05:1;

SW1=(1/18)*5*n*((1-((1-a)*(b+g)-f1*(r+e)+t1*x)-m1-c1).^2);
SW2=(1/18)*5*n*((1-(-f2*(r+e)+t2*x)-m2-c2).^2);
SW3=(1/8)*3*n*((1-((1-q)*(b+g)-f3*(r+e)+t3*x)-m3).^2);

plot(r, SW1, 'b-', 'LineWidth', 1.5, 'DisplayName', 'r');
plot(r, SW2, 'b--', 'LineWidth', 1.5, 'DisplayName', '');
plot(r, SW3, 'b:', 'LineWidth', 1.5, 'DisplayName', '');

title({'(d)', 'Impact of social welfare changes '}, 'Interpreter', 'none', 'HorizontalAlignment', 'center');

xlabel('Symbol change', 'FontSize', 12);
ylabel('Best price', 'FontSize', 12);

% 创建虚拟线条用于图例
h1 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', '\it {e}');
h2 = plot(NaN, NaN, 'b-', 'LineWidth', 1.5, 'DisplayName', '\gamma');

h4 = plot(NaN, NaN, 'k-', 'LineWidth', 1.5, 'DisplayName', '\it {SW}1');
h5 = plot(NaN, NaN, 'k--', 'LineWidth', 1.5, 'DisplayName', '\it {SW}2');
h6 = plot(NaN, NaN, 'k:', 'LineWidth', 1.5, 'DisplayName', '\it {SW}3');


% 设置图例
legend([h1, h2, h4, h5, h6], 'NumColumns', 2, 'Location', 'best');
grid on;
box on;
hold off;

exportgraphics(gcf, '9999.pdf', 'Resolution', 1200);
