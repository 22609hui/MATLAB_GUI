%大眼函数：
function [ J ] = bigger(I,pointx,pointy,r)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%I为原图像，pointx和pointy为放大中心点坐标，r为放大半径
im=I;
left=round(pointy-r);%分别得到放大区域的上下左右坐标
right=round(pointy+r);
top=round(pointx-r);
bottom=round(pointx+r);
space = r * r;%放大区域面积
strength=25;    %放大强度
fr=im(:,:,1);%原图像为彩色图像，要分成RGB三个分量进行处理
fg=im(:,:,2);
fb=im(:,:,3);
im2fr=fr;
im2fg=fg;
im2fb=fb;
%插值算法
for x=top:bottom%遍历需要放大的区域
    offsetx=x-pointx;%当前点距中点的在x上的距离
    for y=left:right
        offsety=y-pointy;
        xy=offsetx*offsetx+offsety*offsety;%当前点距中点的距离
        if xy<=space%若当前点在需放大的圆形区域内
            %等比例放大
            scale=1-xy/space;
            scale=1-strength/100*scale;
            %posy和posx为放大后坐标值
            %采用最近邻插值算法
            posy=round(offsety*scale+pointy);
            posx=round(offsetx*scale+pointx);
            im2fr(x,y)=fr(posx,posy);
            im2fg(x,y)=fg(posx,posy);
            im2fb(x,y)=fb(posx,posy);
        end
    end
end
J=cat(3,im2fr,im2fg,im2fb);%将RGB三个分量整合，得到彩色图像
end
                        
