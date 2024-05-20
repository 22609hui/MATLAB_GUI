function [PSNR,o]=tiSgrc_psnr(H,height,width,g)%H原始图像，height图像矩阵行，width图像矩阵列,g去噪后图像的图像\
o=0;
p=0;
for i=1:height
    for j=1:width
        o=o+(double(H(i,j))-double(g(i,j)))^2;
    end
end
p=255^2/(o/(height*width));
p=double(p);
p1=log(p);
p1=p1/log(20);
PSNR=p1*20;