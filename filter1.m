%滤波函数
function img_result = filter1(img, w, i)
    moban_size = i;
    [M,N] = size(img);
    img_lap = zeros(M, N);
     expand_img = double(wextend('2D','zpd', img, floor(i/2)));%扩展0，转double为了矩阵运算

     for i=1:M
        for j=1:N
            ave = sum( sum( expand_img(i:i+moban_size-1,j:j+moban_size-1) .* w)); %取出扩展元素与模板相乘,并求矩阵元素之和
            img_lap(i,j) = ave;
        end
     end

    img_lap = uint8(img_lap);%转int8，图像
   %figure;
   % imshow(img_lap);
   %title('边缘')
    img_result = img - img_lap;
end
