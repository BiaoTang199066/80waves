clear all

load mean_data
col=[1 0 0; 0 1 0; 0 0 1]
a1=mean_data(1,:);b1=mean_data(2,:); %
a2= mean_data(4,:);b2=mean_data(5,:); 
t1=mean_data(3,:);
t2=mean_data(12,:);
figure
ls={'-','--','-.',':','-.-'}

y1=zeros(length(a1),10);

fengzhi_a1=zeros(3,3);
leiji_a1=zeros(3,3);
duration_a1=zeros(3,3);

a10=a1;
for i=1:length(a1)
%figure
k=1;p=[0 0.1 0.3 0.5 0.7];
for j=1:4
    a1=a10+a10*p(j);

    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[round(t1(i)) round(t2(i))];
f=LinearMod_delay(Par1,Par2,t);
y1(i,1:length(f))=f;


fengzhi_a1(i,k)=max(exp(y1(i,:)));
leiji_a1(i,k)=sum(exp(y1(i,:)));
duration_a1(i,k)=length(find(y1(i,:)~=0));


subplot(422)
hold on
h=plot(exp(y1(i,:)),'color',col(:,i),'LineWidth',1.5,'LineStyle',char(ls(j)))
xlabel('t')
ylabel('daily cases')
title('(b)')
set(text,'interpreter','latex')
legend('$\bar{a_1}$','$\bar{a_1}$+0.3$\bar{a_1}$','$\bar{a_1}$+0.5$\bar{a_1}$','$\bar{a_1}$+0.7$\bar{a_1}$')


% subplot(421)
% hold on
% plot(y1(i,:),'color',col(:,i),'LineWidth',1.5,'LineStyle',char(ls(j)))
% %set( gca,'ColorOrder', [0 0 0; 1 0 0; 0 1 0] )
% xlabel('t')
% ylabel('daily cases(log)')
% title('(a)')
k=k+1;
end
end

a1=a10;k=1;j=1;
p=[0 0.3 0.5 0.7];
for j=1:4
    a1=a10+a10*p(j);
for i=1:length(a1)
    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[round(t1(i)) round(t2(i))];
f=LinearMod_delay(Par1,Par2,t);
y11(i,1:length(f))=f;


% fengzhi_a1(i,k)=max(exp(y11(i,:)));
% leiji_a1(i,k)=sum(exp(y11(i,:)));
% duration_a1(i,k)=length(find(y11(i,:)~=0));


subplot(421)
hold on
plot(y11(i,:),'color',col(:,i),'LineWidth',1.5,'LineStyle',char(ls(j)))
xlabel('t')
ylabel('daily cases(ln)')
title('(a)')

end
legend('Original','Delta','Omicron')
end


%%
a1=mean_data(1,:);b1=mean_data(2,:); 
a2= mean_data(4,:);b2=mean_data(5,:);
t1=mean_data(3,:);
t2=mean_data(12,:);

y2=zeros(length(a1),10);

fengzhi_t1=zeros(3,3);
leiji_t1=zeros(3,3);
duration_t1=zeros(3,3);

t10=t1;p=[0 3 5 7];
%figure
for i=1:length(a1)
    k=1;
for j=1:4
    t1=t10+p(j);

    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[round(t1(i)) round(t2(i))];
f=LinearMod_delay(Par1,Par2,t);
y2(i,1:length(f))=f;


fengzhi_t1(i,k)=max(exp(y2(i,:)));
leiji_t1(i,k)=sum(exp(y2(i,:)));
duration_t1(i,k)=length(find(y2(i,:)~=0));


subplot(423)
hold on
plot(y2(i,:),'color',col(:,i),'LineWidth',1.5,'LineStyle',char(ls(j)))
%set( gca,'ColorOrder', [0 0 0; 1 0 0; 0 1 0] )
xlabel('t')
ylabel('daily cases(ln)')
title('(c)')
subplot(424)
hold on
plot(exp(y2(i,:)),'color',col(:,i),'LineWidth',1.5,'LineStyle',char(ls(j)))
xlabel('t')
ylabel('daily cases')
title('(d)')
legend('$\bar{t_1}$','$\bar{t_1}$+3','$\bar{t_1}$+5','$\bar{t_1}$+7')
k=k+1;
end


end


%% 

a1=mean_data(1,:);b1=mean_data(2,:); 
a2= mean_data(4,:);b2=mean_data(5,:); 
t1=mean_data(3,:);
t2=mean_data(12,:);

y4=zeros(length(a1),10);

fengzhi_a2=zeros(3,3);
leiji_a2=zeros(3,3);
duration_a2=zeros(3,3);

a20=a2;p=[0 0.3 0.5 0.7];
%figure
for i=1:length(a1)
    k=1;
for j=1:4
    a2=a20-a20*p(j)

    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[round(t1(i)) round(t2(i))];
f=LinearMod_delay(Par1,Par2,t);
y4(i,1:length(f))=f;


fengzhi_a2(i,k)=max(exp(y4(i,:)));
leiji_a2(i,k)=sum(exp(y4(i,:)));
duration_a2(i,k)=length(find(y4(i,:)~=0));


subplot(425)
hold on
plot(y4(i,:),'color',col(:,i),'LineWidth',1.5,'LineStyle',char(ls(j)))
%set( gca,'ColorOrder', [0 0 0; 1 0 0; 0 1 0] )
xlabel('t')
ylabel('daily cases(ln)')
title('(e)')
subplot(426)
hold on
plot(exp(y4(i,:)),'color',col(:,i),'LineWidth',1.5,'LineStyle',char(ls(j)))
xlabel('t')
ylabel('daily cases')
title('(f)')
legend('$\bar{a_2}$','$\bar{a_2}$-0.3$\bar{a_2}$','$\bar{a_2}$-0.5$\bar{a_2}$','$\bar{a_2}$-0.7$\bar{a_2}$')
k=k+1;
end
end

%% baseline
% a1=mean_data(1,:);
b1=mean_data(2,:); 
a2= mean_data(4,:);b2=mean_data(5,:); 
t1=mean_data(3,:);
t2=mean_data(12,:);

y3=zeros(length(a1),10);

fengzhi_b1=zeros(3,3);
leiji_b1=zeros(3,3);
duration_b1=zeros(3,3);
Rc=[4 6 8];
%figure
for i=1:length(a1)
    k=1;
for j=1:1
    a1=(Rc-1)/5 ;

    Par1=[a1(i) b1(i)];
    Par2=[a2(i) b2(i)];
    t=[round(t1(i)) round(t2(i))];
f=LinearMod_delay(Par1,Par2,t);
y3(i,1:length(f))=f;

fengzhi_b1(i,k)=max(exp(y3(i,:)));
leiji_b1(i,k)=sum(exp(y3(i,:)));
duration_b1(i,k)=length(find(y3(i,:)~=0));

%
subplot(427)
hold on
plot(y3(i,:),'color',col(:,i),'LineWidth',1.5,'LineStyle',char(ls(j)))
%set( gca,'ColorOrder', [0 0 0; 1 0 0; 0 1 0] )
xlabel('t')
ylabel('daily cases(ln)')
title('(g)')
subplot(428)
hold on
plot(exp(y3(i,:)),'color',col(:,i),'LineWidth',1.5,'LineStyle',char(ls(j)))
xlabel('t')
ylabel('daily cases')
title('(h)')
legend('R_c=4','R_c=6','R_c=8')
k=k+1;
end
end

 subplot(421)
 ylim([0 10])
  subplot(423)
 ylim([0 10])
  subplot(425)
 ylim([0 10])
  subplot(427)
 ylim([0 20])
 
 
 
 
 
 
 
 
 
