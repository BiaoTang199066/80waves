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
p=0.3;pt=3;
a1=a1+a1*p;t1=t1+pt;
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


%%delta
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


%% omicron

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


Y=exp(y);Y(Y==1)=0;
CY=sum(Y);
cc=sum(sum(Y))
L=find(CY==0);
ln0=length(L)  %



Y(Y==0)=nan;
y(y==0)=nan;
Y=Y';
y=y';



