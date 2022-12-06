clear all
clc

%
%2020年1月22日至2020年3月18日
y=[444 0 105 212 297 365 2131 0 1349 903 1347 4024 2345 3156 2987 2447 2841 2147 2531 2097 1638 0 14840 6200 1843 1933 1807 1693 349 411 220 1422 0 203 499 401 409 318 423 570 196 114 115 134 126 74 41 36 17 13 8 5 4 4 4 1 1];


%2021年7月31日至2021年8月20日
y=[1 2 3 9 1 6 9 6 3 15 14 10 4 4 0 0 3 0 0 0 1];

%2022年3月27日至2022年4月29日
y=[2 0 1 5 5 11 18 9 16 6 4 3 2 17 33 37 45 42 30 41 12 11 14 4 3 0 3 4 2 3 2 0 7 1];

%2022年8月7日至2022年8月31日 
y=[10 4 25 8 6 9 4 10 11 6 0 14 15 16 11 11 11 13 13 16 12 27 32 28];


%
% y=[1 2 4 9 20 41 45 62 121 198 291 440 571];%用了1月23日以前的修正数据
y=[1 2 3 9]; 
% y=[1 5 5 11 18];


x=0:1:length(y)-1;
y=log(y);

figure(1)
Par=polyfit(x',y',1);
Par
f = polyval(Par,x);
plot(x,y,'o',x,f,'-')
hold on
plot(x,f,'sr')

th=-Par(2)/Par(1):0.01:(length(y)-1);
f1=Par(1)*th+Par(2);

% x1=-5:1:length(y)-1;
% f1=polyval(Par,x1);
plot(th,f1,'-')
line([0 0],[0 max(f)+1])
gamma=1/7;
Rc=Par(1)/gamma+1

gamma=1/6;
Rc=Par(1)/gamma+1
%rg=gamma*(R-1)
gamma=1/5;
Rc=Par(1)/gamma+1
gamma=1/4;
Rc=Par(1)/gamma+1

%下降阶段的拟合与估计
L1=length(x)-1;
% y=[570 196 114 115 134 126 74 41 36 17 13 8 5 4 4 4 1 1];
y=[15 14 10 4 4];
% y=[45 42 30 41 12 11 14 4 3];

x=0:1:length(y)-1;
y=log(y);

figure(1)
Par=polyfit(x',y',1);
Par
f = polyval(Par,x);
plot(x+L1,y,'o',x+L1,f,'-')
hold on
plot(x+L1,f,'sr')

th=0:0.01:(-Par(2)/Par(1));
f1=Par(1)*th+Par(2);

% x1=-5:1:length(y)-1;
% f1=polyval(Par,x1);
plot(th+L1,f1,'r-')
%line([0 0],[0 max(f)+1])

gamma=1/3;
Rc=Par(1)/gamma+1
%rg=gamma*(R-1)
gamma=1/2;
Rc=Par(1)/gamma+1
gamma=1;
Rc=Par(1)/gamma+1