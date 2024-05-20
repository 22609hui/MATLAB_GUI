function [ y ]=zishiying(x)

x11=medfilt2(x,[3 3]);

x12=double(x11);

[a,b]=size(x12);

[c,s]=wavedec2(x12,3,'coif2');

n=[1,2,3];

p4=0.02*(sqrt(2*log(a*b)));

size(detcoef2('h',c,s,1));

size(detcoef2('v',c,s,1));

size(detcoef2('d',c,s,1));

p1(1)=detcoef2('h',c,s,1);

p2(1)=detcoef2('v',c,s,1);

p3(1)=detcoef2('d',c,s,1);

p1(2)=detcoef2('h',c,s,2);

p2(2)=detcoef2('v',c,s,2);

p3(2)=detcoef2('d',c,s,2);

for i=1:1:2

p1(i)=1/((p1(i)-p4)^2+1);

if p1(i)>=p4

p1(i)=sign(p1(i))*(abs(p1(i))-p1(i)*p4);

else

p1(i)=0;

end

if p2(i)>=p4

p2(i)=sign(p2(i))*(abs(p2(i))-p2(i)*p4);

else

p2(i)=0;

end

if p3(i)>=p4

p3(i)=sign(p3(i))*(abs(p3(i))-p3(i)*p4);

else

p3(i)=0;

end

end
