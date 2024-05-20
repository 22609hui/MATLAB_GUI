%贴图的函数
 function back_img = stick_picture1(back_img,fore_img,pos_x,pos_y,m,n,angle,alpha)
%调整贴图图像大小，返回图像fore_img，其行数和列数由二元素向量 [numrows numcols] 指定。
 scale_img = imresize(fore_img, [m,n]);
 alpha = imresize(alpha, [m,n]);
%angle为旋转度数，'crop'，使输出图像 J 与输入图像 I 大小相同，裁剪旋转后的图像以适应边界框。
 scale_img = imrotate(scale_img, angle, 'crop');
 alpha = imrotate(alpha, angle, 'crop');
%获取调整大小后的贴图图像大小
 scale_size_ = size(scale_img);
 h = scale_size_(1);
 w = scale_size_(2);
%获取背景图片大小
 hh = size(back_img,1);
 ww = size(back_img,2);
 
 delt_h = 0.7*uint16(pos_y - h/2);
 delt_w = 0.7*uint16(pos_x - w/2);
 for i = 1:h
     for j = 1:w
         if alpha(i,j)~=0 && i+delt_h<=hh && i+delt_h>0 && j+delt_w<=ww && j+delt_w>0 % 透明度检查和越界检查
%   贴图与原图按一定比例加权
  back_img(i+delt_h,j+delt_w,1) = (uint16(alpha(i,j)) * uint16(scale_img(i,j,1)) + uint16(255-alpha(i,j)) * uint16(back_img(i+delt_h,j+delt_w,1) ) )/255;
  back_img(i+delt_h,j+delt_w,2) = (uint16(alpha(i,j)) * uint16(scale_img(i,j,2)) + uint16(255-alpha(i,j)) * uint16(back_img(i+delt_h,j+delt_w,2) ) )/255;
  back_img(i+delt_h,j+delt_w,3) = (uint16(alpha(i,j)) * uint16(scale_img(i,j,3)) + uint16(255-alpha(i,j)) * uint16(back_img(i+delt_h,j+delt_w,3) ) )/255;
         end
     end
 end