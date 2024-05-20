%% 主函数
function [out,mask,p]=manseg(I,im)
% im 为黑白或彩色图，格式为 double类型
% out 为原图截图
% mask 为截图蒙板
% p 为蒙板定点坐标
[M,N,D]=size(im);
figure;
imshow(I)
k=0;
p=[];

% 手动选点
hold on
while 1
    [x,y,flag]=ginput(1);
    if flag==1
        k=k+1;
        plot(x,y,'b.','MarkerSize',20)
        p(k,1:2)=round([y,x]);
        if k>1
            line([p(k-1,2),p(k,2)],[p(k-1,1),p(k,1)],'LineWidth',2)
        end
    else
        line([p(1,2),p(k,2)],[p(1,1),p(k,1)],'LineWidth',2)
        break
    end
end
close;
hold off

% 生成蒙板
mask=zeros(M,N);
for i=1:k
    if i<k
        mask=pixelcontect(mask,p(i,:),p(i+1,:));
    else
        mask=pixelcontect(mask,p(i,:),p(1,:));
    end
end
mask=imfill(mask,'hole');
%figure ;
%imshow(mask)
if D>1
    mask=cat(3,mask,mask,mask);
end

% 提取目标
out=mask.*im;

end

%% 子函数

% 其中 p0,p1为两个点的坐标，a为蒙板
function a=pixelcontect(a,p0,p1)

a(p0(1),p0(2))=1;
a(p1(1),p1(2))=1;
dis=p1-p0;
gap=((-1).^double(dis<0));
absdis=abs(dis);
more=max(absdis);
less=min(absdis);

if absdis(1)>=absdis(2)
    dir1=[gap(1),0];
    dir2=[0,gap(2)];
else
    dir2=[gap(1),0];
    dir1=[0,gap(2)];
end

lmp=less/more;
i=0;j=0;
while i<more
    p0=p0+dir1;
    a(p0(1),p0(2))=1;
    i=i+1;
    if i<more
        p1=p1-dir1;
        a(p1(1),p1(2))=1;
        i=i+1;
    end
    if j/i<lmp
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

end % 函数结束


