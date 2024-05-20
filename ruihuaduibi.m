%%sobel
%I=imread('girl3.jpg'); %读取图像
%I1=rgb2gray(I); %将彩色图变成灰色图
%subplot(131),imshow(I),title('原图');
%
%model=[-1,0,1;
%       -2,0,2;
%       -1,0,1];
%[m,n]=size(I1);
%I2=double(I1);
%
%for i=2:m-1
%    for j=2:n-1
%        I2(i,j)=I1(i+1,j+1)+2*I1(i+1,j)+I1(i+1,j-1)-I1(i-1,j+1)-2*I1(i-1,j)-I1(i-1,j-1);
%    end
%end
%subplot(132),
%imshow(I2),title('边缘提取后的图像');
%I2 = I2 + double(I);
%subplot(133),
%imshow(uint8(I2)),title('Sobel算子锐化后的图像');

%Prewitt算子
%I=imread('girl3.jpg');
%I1=rgb2gray(I); %将彩色图变成灰色图
%subplot(131);
%imshow(I),title('原图');
%model=[-1,0,1;
%-1,0,1;
%-1,0,1];
%[m,n]=size(I1);
%I2=I1;
%for i=2:m-1
%for j=2:n-1
%tem=I1(i-1:i+1,j-1:j+1);
%tem=double(tem).*model;
%
%I2(i,j)=sum(sum(tem));
%end
%end
%subplot(132),
%imshow(uint8(I2)),title('边缘提取后的图像');
%I2=I2+I;
%subplot(133),
%imshow(I2),title('Prewitt算子图像锐化')



%laplacian算子
I=imread('girl3.jpg'); 
I1=mat2gray(I);%实现图像矩阵的归一化操作
[m,n]=size(I1);
newGrayPic=I1;%为保留图像的边缘一个像素
LaplacianNum=0;%经Laplacian算子计算得到的每个像素的值
LaplacianThreshold=0.2;%设定阈值
for j=2:m-1 %进行边界提取
    for k=2:n-1
        LaplacianNum=abs(4*I1(j,k)-I1(j-1,k)-I1(j+1,k)-I1(j,k+1)-I1(j,k-1));
        if(LaplacianNum > LaplacianThreshold)
            newGrayPic(j,k)=255;
        else
            newGrayPic(j,k)=0;
        end
    end
end
I2=rgb2gray(I); %将彩色图变成灰色图
subplot(131),imshow(I),title('原图');
subplot(132),
imshow(newGrayPic);
title('Laplacian算子的处理结果')
t=I1+newGrayPic;
subplot(133),imshow(t),title('图像锐化后')



