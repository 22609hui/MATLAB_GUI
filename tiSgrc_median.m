function [d]=tiSgrc_median(M,height,width)%M加入噪声后的图像,
n=5;%模板维度，奇数
x1=double(M);  %数据类型转换
x2=x1;  %转换后的数据赋给x2
for i=1:height-n+1  
    for j=1:width-n+1  
        c=x1(i:i+(n-1),j:j+(n-1)); %在x1中从头取模板大小的块赋给c  
        e=c(1,:);      %e中存放是c矩阵的第一行  
        for u=2:n  %将c中的其他行元素取出来接在e后使e为一个行矩阵 
            e=[e,c(u,:)];          
        end  
        e=median(e);%取一行的中值
       x2(i+(n-1)/2,j+(n-1)/2)=e;
    end  
end    
d=uint8(x2);  %未被赋值的元素取原值 


%{
%C=rgb2gray(H);  %灰度处理，灰度处理后的图像是二维矩阵
A=fspecial('average',[n,n]);  %matlab中自带值滤波函数
b=imfilter(lena_salt,A);
figure;
imshow(b); %显示过滤后的灰度图片
title('过滤后的灰度图');
%}
