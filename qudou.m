%祛痘祛痣函数：
function [ f ] = qudou(img)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
img2= img;
[ M,N,~ ] = size(img);%得到原图像的大小
 
    %进行交互选择处理区域
    mask = roipoly( img2 );%roipoly函数选取指定多边形
    
    x1 = immultiply( mask,img2( :,:,1 ) );%将选取的范围和原图通道相乘
    x2 = immultiply( mask,img2( :,:,2 ) );
    x3 = immultiply( mask,img2( :,:,3 ) );
    x = cat( 3,x1,x2,x3 );%将三个通道连接在一起，得到选取的部分图像
    f1 = zeros( M,N );%f1,f2,f3存储三个通道的运算结果
    f2 = zeros( M,N );
    f3 = zeros( M,N );
 
    %找到第一个像素值不为0的点，得到该点像素值，作为采样后填充的像素
    for i = 1:M
        for j = 1:N
            if( x1( i,j ) ~= 0 )
                r = x( i,j,: );%得到采样的像素值
            end
        end
    end
    
    %随机产生填充图像
    y = zeros(3,3,3);
    y( :,:,1 ) = randi([r(1)-5,r(1)+5],[3,3]);%randi函数-随机整数--在采样到的±5的区间中找随机数
    y( :,:,2 ) = randi([r(2)-5,r(2)+5],[3,3]);%并返回3*3大小的矩阵
    y( :,:,3 ) = randi([r(3)-5,r(3)+5],[3 3]);
    %类型转换
    y = double(y);
    %对于三个通道分别进行处理，用采样得到的像素点取代原来的像素点
    for i = 2:3:M-1
        for j = 2:3:N-1
            f1( i-1:i+1,j-1:j+1 ) = mask( i-1:i+1,j-1:j+1 ).* y( :,:,1 );
            f2( i-1:i+1,j-1:j+1 ) = mask( i-1:i+1,j-1:j+1 ).* y( :,:,2 );
            f3( i-1:i+1,j-1:j+1 ) = mask( i-1:i+1,j-1:j+1 ).* y( :,:,3 );
        end
    end
    f = cat( 3,f1,f2,f3 );%将三个通道连接在一起，得到选取区域处理后的图像
    f = uint8( f );%类型转换
    %得到处理后图像
    a = img2 - x;%原图中除了选取区域的图像
    f = f + a;%叠加
