clear all
clc

load duration_original
load duration_omicron
load duration_delta

figure
subplot(311)
x_original={'Jiangsu'	'Shanghai'	'Chongqing'	'Anhui'	'Fujian'	'Guangdong'	'Henan'	'Hunan'	'Hebei'	'Jiangxi'	'Liaoning'	'Shandong'	'Shaanxi'	'Sichuan'	'Yunnan'	'Zhejiang' 	'Heilongjiang'	'Beijing'	'Xinjiang'	'Liaoning'	'Liaoning'	'Hebei'	'Heilongjiang'	'Jilin'};
plot(duration_original','o','MarkerSize',6)
ylabel('Duartion')
title('(a) Original/Alpha')
set(gca,'xtick',1:24)
set(gca,'xticklabel',x_original(1:end));
th=rotateticklabel(gca, 45);
legend('Actural duration','predict duration(without delay)','predict duration(with delay)')


subplot(312)
x_delta={'Guangdong'	'Jiangsu'	'Hunan'	'Hubei'	'Fujian'	'Gansu'	'Inner Mongolia'	'Heilongjiang'	'Hebei'	'Liaoning'	'Inner Mongolia'	'Zhejiang'	'Shaanxi'	'Henan'};

plot(duration_delta','o','MarkerSize',6)
ylabel('Duartion')
title('(b) Delta')
set(gca,'xtick',1:14)
set(gca,'xticklabel',x_delta(1:end));
th=rotateticklabel(gca, 45);

subplot(313)
x_omicron={'Tianjin'	'Guangxi'	'Guangdong'	'Inner Mongolia'	'Jilin'	'Hebei'	'Jiangsu'	'Shandong'	'Gansu'	'Shaanxi'	'Tianjin'	'Heilongjiang'	'Anhui'	'Fujian'	'Jiangxi'	'Henan'	'Hainan'	'Sichuan'	'Shanxi'	'Guangxi'	'Hunan'	'Beijing'	'Xinjiang'	'Qinghai'	'Sichuan'	'Tianjin'	'Inner Mongolia'	'Anhui'	'Jiangsu'	'Shanghai'	'Shaanxi'	'Guangdong'	'Shandong'	'Guangxi'	'Gansu'	'Henan'	'Jiangxi'	'Sichuan'	'Shandong'	'Zhejiang'	'Inner Mongolia'	'Fujian'};

plot(duration_omicron','o','MarkerSize',6)
ylabel('Duartion')
title('(c) Omicron')
set(gca,'xtick',1:42)
set(gca,'xticklabel',x_omicron(1:end));
th=rotateticklabel(gca, 45);



