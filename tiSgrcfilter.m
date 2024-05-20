function [G]=tiSgrcfilter(H,M)
n=5;    %模板大小
[height, width]=size(H);   %获取图像的尺寸（n小于图片的宽高）
%% 加入噪声，要求二
%加入乘性噪声
g_uniform=tiSgrc_uniform(H,height,width);
figure;
title_name='原图手动加入噪声';
sgtitle(title_name); 
subplot(1,3,1);
imshow(g_uniform,[]);
title('uniform');

%加入高斯噪声
g_gaussian=tiSgrc_gaussian(H,height,width);
subplot(1,3,2);
imshow(g_gaussian,[]);
title('gaussian');

%加入椒盐噪声
g_impulse=tiSgrc_impulse(H,height,width);
subplot(1,3,3);
imshow(g_impulse);
title('impulse');

hold off;
%% 原图和噪声图
figure;
title_name='原图&原有噪声图片';
sgtitle(title_name); 
subplot(1,2,1);
imshow(H);%显示原图
title('原图');
subplot(1,2,2);
imshow(M);%显示加入噪声的图像
title('加入噪声图片');
% x = padarray(x,[3,3]); %对图像边缘进行填充
hold off;
%% 滤波器设计
%均值滤波
d_average=tiSgrc_average(M,height,width);
figure;
title_name='去噪后图片';
sgtitle(title_name); 
subplot(3,3,1);imshow(d_average,[]);%显示过滤图片
title('average');

%中值滤波
d_median=tiSgrc_median(M,height,width);
subplot(3,3,2);imshow(d_median,[]);%显示过滤图片
title('median');

%高斯低通滤波
d_gaossian=tiSgrc_gaussian_filter(M,height,width);
subplot(3,3,3);imshow(d_gaossian,[]);title('高斯低通滤波d=50');

%Butterworth低通滤波器
d_Butterworth=tiSgrc_Butterworth_filter(M,height,width);
subplot(3,3,4);imshow(d_Butterworth,[]);
title('Butterworth低通滤波图像');

%小波变换
d_wavelet=tiSgrc_wavelet(M);
subplot(3,3,5);imshow(d_wavelet,[]);
title('wavelet滤波图像');

hold off;
%% 将去噪后图像整合到一个三维数组中，方便后续操作
G(:,:,1)=d_average;
G(:,:,2)=d_median;
G(:,:,3)=d_gaossian;
G(:,:,4)=d_Butterworth;
G(:,:,5)=d_wavelet;
