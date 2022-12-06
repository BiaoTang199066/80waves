clear all
clc
load ab_original
load tau_original
load n_original 
a1=ab(:,1);b1=ab(:,2); 
a2=ab(:,3);b2=ab(:,4); 
t1=tau(:,1);
t2=tau(:,2);
y=zeros(length(a1),100);
figure
for i=1:length(a1)
    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[t1(i) t2(i)];
f=LinearMod(Par1,Par2,t);
y(i,n(i):n(i)+length(f)-1)=f;
end
date1=datenum('01-22-2020');
date2=date1+length(y(1,:))-1;
subplot(311)
hold on
plot(date1:date2,y','LineWidth',1.2)
subplot(312)
hold on
plot(date1:date2,exp(y'),'LineWidth',1.2)
subplot(313)
hold on
ly=exp(y);
ly(find(y==0))=0;
Y=sum(ly);
plot(date1:date2,Y,'LineWidth',1.2)

%%delta
load ab_delta
load tau_delta
load n_delta
a1=ab(:,1);b1=ab(:,2);
a2=ab(:,3);b2=ab(:,4);
t1=tau(:,1);
t2=tau(:,2);
y=zeros(length(a1),100);

for i=1:length(a1)
    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[t1(i) t2(i)];
f=LinearMod(Par1,Par2,t);
y(i,n(i):n(i)+length(f)-1)=f;
end
date1=datenum('01-22-2020');
date2=date1+length(y(1,:))-1;
subplot(311)
hold on
plot(date1:date2,y','LineWidth',1.2)
subplot(312)
hold on
plot(date1:date2,exp(y'),'LineWidth',1.2)
subplot(313)
hold on
ly=exp(y);
ly(find(y==0))=0;
Y=sum(ly);
plot(date1:date2,Y,'LineWidth',1.2)


%% omicron
load ab_omicron
load tau_omicron 
load n_omicron
a1=ab(:,1);b1=ab(:,2);
a2=ab(:,3);b2=ab(:,4);
t1=tau(:,1);
t2=tau(:,2);
y=zeros(length(a1),100);

for i=1:length(a1)
    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[t1(i) t2(i)];
f=LinearMod(Par1,Par2,t);
y(i,n(i):n(i)+length(f)-1)=f;
end
date1=datenum('01-22-2020');
date2=date1+length(y(1,:))-1;
subplot(311)
hold on
plot(date1:date2,y','LineWidth',1.2)
subplot(312)
hold on
plot(date1:date2,exp(y'),'LineWidth',1.2)
subplot(313)
hold on
ly=exp(y);
ly(find(y==0))=0;
Y=sum(ly);
plot(date1:date2,Y,'LineWidth',1.2)

%% Õº–Œ…Ë÷√
subplot(311)
xlabel('t')
ylabel('Daily cases(ln)')
ylim([0 15])
set(gca,'XTick',date1:180:date2,'XTickLabelRotation',0);
datetick('x','mm-dd-yyyy','keepticks');
subplot(312)
xlabel('t')
ylabel('Daily cases')
ylim([0 1000])
set(gca,'XTick',date1:180:date2,'XTickLabelRotation',0);
datetick('x','mm-dd-yyyy','keepticks');
subplot(313)
xlabel('t')
ylabel('Daily cases(sum)')
ylim([0 5000])
set(gca,'XTick',date1:180:date2,'XTickLabelRotation',0);
datetick('x','mm-dd-yyyy','keepticks');




