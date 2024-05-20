%具有连线功能的函数：


% 其中 p0,p1为两个点的坐标，a为蒙板
function a=pixelcontect(a,p0,p1)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a(p0(1),p0(2))=1;%输入点像素值设为0
a(p1(1),p1(2))=1;%输入点像素值设为0
dis=p1-p0;%dy,dx
gap=((-1).^double(dis<0));%取正
absdis=abs(dis);%取正
more=max(absdis);%变化大的
less=min(absdis);%变化小的
 
if absdis(1)>=absdis(2)%如果y方向变化比x方向变化大
    dir1=[gap(1),0];%向y方向走
    dir2=[0,gap(2)];
else
    dir2=[gap(1),0];%向x方向走
    dir1=[0,gap(2)];
end
 
lmp=less/more;%斜率
i=0;j=0;
while i<more%将线段覆盖的点的像素值设为1
    p0=p0+dir1;
    a(p0(1),p0(2))=1;
    i=i+1;
 if i<more
        p1=p1-dir1;
        a(p1(1),p1(2))=1;
        i=i+1;
    end
 if j/i<lmp%若比斜率小
        if j<less
            p0=p0+dir2;
            a(p0(1),p0(2))=1;
            j=j+1;
        end
        if j<less
           p1=p1-dir2;
            a(p1(1),p1(2))=1;
            j=j+1;
        end
 end
    end
