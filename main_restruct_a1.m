clear all
clc

load index
load par_original
load par_delta
load par_omicron
a1=par_original(2,:);b1=par_original(3,:);
a2=par_original(4,:);b2=par_original(5,:);
t1=par_original(6,:);t2=par_original(7,:);
n=par_original(1,:);
p=0.7;
a1=a1+a1*p;
y=zeros(length(a1),100);
% figure
for i=1:length(a1)
    if a1(i)~=0
    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[t1(i) t2(i)];
    f=LinearMod(Par1,Par2,t);
    y(index(i),n(i):n(i)+length(f)-1)=f;
    end
end
% date1=datenum('01-22-2020');
% date2=date1+length(y(1,:))-1;
% subplot(311)
% hold on
% bar(date1:date2,y','LineWidth',1.2)
% subplot(312)
% hold on
% bar(date1:date2,exp(y'),'LineWidth',1.2)
% subplot(313)
% hold on
% ly=exp(y);
% ly(find(y==0))=0;
% Y=sum(ly);
% plot(date1:date2,Y,'LineWidth',1.2)


%%delta
% load ab_delta
% load tau_delta
% load n_delta
% a1=ab(:,1);b1=ab(:,2);
% a2=ab(:,3);b2=ab(:,4);
% t1=tau(:,1);%
% t2=tau(:,2);%
a1=par_delta(2,:);b1=par_delta(3,:);
a2=par_delta(4,:);b2=par_delta(5,:);
t1=par_delta(6,:);t2=par_delta(7,:);
n=par_delta(1,:);
a1=a1+a1*p;
% y=zeros(length(a1),100);

for i=1:length(a1)
    if a1(i)~=0
    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[t1(i) t2(i)];
    f=LinearMod(Par1,Par2,t);
    y(index(i),n(i):n(i)+length(f)-1)=f;
    end
end
% date1=datenum('01-22-2020');
% date2=date1+length(y(1,:))-1;
% subplot(311)
% hold on
% bar(date1:date2,y','LineWidth',1.2)
% subplot(312)
% hold on
% bar(date1:date2,exp(y'),'LineWidth',1.2)
% subplot(313)
% hold on
% ly=exp(y);
% ly(find(y==0))=0;
% Y=sum(ly);
% bar(date1:date2,Y,'LineWidth',1.2)


%% omicron
% load ab_omicron
% load tau_omicron 
% load n_omicron
% a1=ab(:,1);b1=ab(:,2);
% a2=ab(:,3);b2=ab(:,4);
% t1=tau(:,1);
% t2=tau(:,2);
a1=par_omicron(2,:);b1=par_omicron(3,:);
a2=par_omicron(4,:);b2=par_omicron(5,:);
t1=par_omicron(6,:);t2=par_omicron(7,:);
n=par_omicron(1,:);
a1=a1+a1*p;
% y=zeros(length(a1),100);

for i=1:length(a1)
    if a1(i)~=0
    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[t1(i) t2(i)];
    f=LinearMod(Par1,Par2,t);
    y(index(i),n(i):n(i)+length(f)-1)=f;
    end
end
% date1=datenum('01-22-2020');
% date2=date1+length(y(1,:))-1;
% subplot(311)
% hold on
% bar(date1:date2,y','LineWidth',1.2)
% subplot(312)
% hold on
% bar(date1:date2,exp(y'),'LineWidth',1.2)
% subplot(313)
% hold on
% ly=exp(y);
% ly(find(y==0))=0;
% Y=sum(ly);
% bar(date1:date2,Y,'LineWidth',1.2)
% 
% %% 
% subplot(311)
% xlabel('t')
% ylabel('Daily cases(ln)')
% ylim([0 15])
% set(gca,'XTick',date1:180:date2,'XTickLabelRotation',0);
% datetick('x','mm-dd-yyyy','keepticks');
% subplot(312)
% xlabel('t')
% ylabel('Daily cases')
% % ylim([0 1000])
% set(gca,'XTick',date1:180:date2,'XTickLabelRotation',0);
% datetick('x','mm-dd-yyyy','keepticks');
% subplot(313)
% xlabel('t')
% ylabel('Daily cases(sum)')
% % ylim([0 5000])
% set(gca,'XTick',date1:180:date2,'XTickLabelRotation',0);
% datetick('x','mm-dd-yyyy','keepticks');

Y=exp(y);Y(Y==1)=0;
CY=sum(Y);
cc=sum(sum(Y))
L=find(CY==0);
ln0=length(L)  
mn0=mean(diff(L))  
pn0=max(diff(L))  


Y(Y==0)=nan;
y(y==0)=nan;
Y=Y';
y=y';



