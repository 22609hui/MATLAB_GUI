function varargout = main_program1(varargin)
% MAIN_PROGRAM1 MATLAB code for main_program1.fig
%      MAIN_PROGRAM1, by itself, creates a new MAIN_PROGRAM1 or raises the existing
%      singleton*.
%
%      H = MAIN_PROGRAM1 returns the handle to a new MAIN_PROGRAM1 or the handle to
%      the existing singleton*.
%
%      MAIN_PROGRAM1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_PROGRAM1.M with the given input arguments.
%
%      MAIN_PROGRAM1('Property','Value',...) creates a new MAIN_PROGRAM1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_program1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_program1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_program1

% Last Modified by GUIDE v2.5 04-May-2024 04:04:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_program1_OpeningFcn, ...
                   'gui_OutputFcn',  @main_program1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main_program1 is made visible.
function main_program1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_program1 (see VARARGIN)
set(gcf, 'Name', '美图秀秀');%设置窗口名称 
% Choose default command line output for main_program1
handles.output = hObject;


%贴纸按钮图片设置
position = get(handles.pushbutton64,'Position');
I= imread('贴纸\1.png');   %读取图片
I = imresize(I, [position(4)*2.85*5, position(3)*5]);
set(handles.pushbutton64,'CData',I);  %将按钮的背景图片设置成I，美化按钮
guidata(hObject, handles);

%贴纸按钮图片设置
position = get(handles.pushbutton65,'Position');
I= imread('贴纸\2.png');   %读取图片
I = imresize(I, [position(4)*2.85*5, position(3)*5]);
set(handles.pushbutton65,'CData',I);  %将按钮的背景图片设置成I，美化按钮
guidata(hObject, handles);

%贴纸按钮图片设置
position = get(handles.pushbutton66,'Position');
I= imread('贴纸\3.png');   %读取图片
I = imresize(I, [position(4)*2.85*5, position(3)*5]);
set(handles.pushbutton66,'CData',I);  %将按钮的背景图片设置成I，美化按钮
guidata(hObject, handles);

%贴纸按钮图片设置
position = get(handles.pushbutton68,'Position');
I= imread('贴纸\4.png');   %读取图片
I = imresize(I, [position(4)*2.85*5, position(3)*5]);
set(handles.pushbutton68,'CData',I);  %将按钮的背景图片设置成I，美化按钮
guidata(hObject, handles);


position = get(handles.pushbutton67,'Position');
I= imread('xiang1.png');   %读取图片
I = imresize(I, [position(4)*2.85*5, position(3)*5]);
set(handles.pushbutton67,'CData',I);  %将按钮的背景图片设置成I，美化按钮
guidata(hObject, handles);


position = get(handles.pushbutton69,'Position');
I= imread('xiang8.png');   %读取图片
I = imresize(I, [position(4)*2.85*5, position(3)*5]);
set(handles.pushbutton69,'CData',I);  %将按钮的背景图片设置成I，美化按钮
guidata(hObject, handles);

position = get(handles.pushbutton70,'Position');
I= imread('xiang11.png');   %读取图片
I = imresize(I, [position(4)*2.85*5, position(3)*5]);
set(handles.pushbutton70,'CData',I);  %将按钮的背景图片设置成I，美化按钮
guidata(hObject, handles);


position = get(handles.pushbutton71,'Position');
I= imread('xiang10.png');   %读取图片
I = imresize(I, [position(4)*2.85*5, position(3)*5]);
set(handles.pushbutton71,'CData',I);  %将按钮的背景图片设置成I，美化按钮
guidata(hObject, handles);



% 设置背景图片
%set(handles.uipanel1,'visible','off');
%axes(handles.uipanel1);
%image1=imread('R-C.jpg');
%imshow(image1);

%A=imread("图片编辑.png");
%set(handles.pushbutton1,'CData',A);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main_program1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_program1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%图像编辑按钮
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'visible','on')
set(handles.uipanel2,'visible','off')
%msgbox('这是一个提示框', '标题');



%人像美化按钮
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel2,'visible','on')



%打开图片
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global I;%原始图像 
global s;%定义全局变量，为了后面的还原保存数据
[filename,pathname,filterindex]=...
uigetfile({'*.*';'*.bmp';'*.tif';'*.png';'*.jpg';'*.jpeg'},'select picture');%选择图片格式
str=[pathname filename];%合成路径+文件名
s=str;
handles.i=imread(str);
handles.filebig=filterindex;
strfullname = strcat(pathname,filename);%取得图像文件全名  
I = imread(strfullname);%读取图片
if filterindex==0
    msgbox('选择图像失败','error');
    return
else
    im=imread(str);%读取图片
end
axes(handles.axes1);%使用第一个axes
imshow(im);%显示图片
handles.img=im;
guidata(hObject,handles);





% 垂直翻转
% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img=flipud(handles.img);%上下翻转
axes(handles.axes2);
cla;
imshow(handles.img);
guidata(hObject,handles);




% 左右翻转
% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img=fliplr(handles.img);%左右翻转
axes(handles.axes2);
cla;
imshow(handles.img);
guidata(hObject,handles);



%旋转
% --- Executes on slider movement.
function Rotate_Callback(hObject, eventdata, handles)
% hObject    handle to Rotate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
rrv=(get(hObject,'Value'));   %获取滑块的值，即滑块当前位置对应的旋转角度。
handles.rot=handles.img;      %将原始图像复制给 handles.rot，确保每次旋转都是基于原始图像的。
handles.rot=imrotate(handles.rot,rrv);   %根据获取的滑块值rrv,对图像进行旋转操作。
axes(handles.axes2);  %设置当前操作的坐标轴为 handles.axes2，即显示旋转后的图像的坐标轴。
cla;     %清空当前坐标轴上的内容，以便显示新的图像。
imshow(handles.rot);   
guidata(hObject,handles)%将更新后的handles结构保存，确保在其他回调函数中可以访问到最新的图像状态和其他数据。




%抠图
% --- Executes on button press in koutu.
function koutu_Callback(hObject, eventdata, handles)
% hObject    handle to koutu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
%img=handles.img;%读取原图像
im=double(I);
[out,mask,p]=manseg(I,im);%调用抠图函数
out=uint8(out);%输出结果
axes(handles.axes2);%显示效果图
imshow(out);
handles.img=out;
guidata(hObject,handles);



%裁剪
% --- Executes on button press in cutbutton.
function cutbutton_Callback(hObject, eventdata, handles)
% hObject    handle to cutbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T;
T=handles.img;
if handles.img==0
    msgbox('处理失败，请选择图像','error');
    return;
else
    axes(handles.axes1);
    imshow(handles.img);
    rect=imrect;%使用 imrect 函数创建一个可拖动的矩形框，允许用户在图像上选择裁剪区域
    position=wait(rect);%等待用户完成选择。
    I=imcrop(handles.img,position);%使用 imcrop 函数根据用户选择的矩形框位置裁剪图像。
end
axes(handles.axes2);
imshow(I);
handles.img=I;
guidata(hObject,handles);


%img=handles.img;%读取原图像
%%img=imread(road);
%[J,rect]=imcrop(img);%打开裁剪工具，rect为绘制的矩形四像素位置向量
%axes(handles.axes2);
%imshow(J);
%handles.img=J;
%guidata(hObject,handles)




%从摄像机获取
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
h = waitbar(0.1,'请稍等，正在检查设备......');
global vid
vid = videoinput('winvideo',1);
vid_src=getselectedsource(vid);
data = getsnapshot(vid);
waitbar(0.5,h,'请稍等, 正在初始化窗口');
set(vid,'TriggerRepeat',Inf);
set(vid,'FramesPerTrigger',1);
set(vid,'FrameGrabInterval',1);
vidRes = get(vid, 'VideoResolution');
nBands = get(vid, 'NumberOfBands');
axes(handles.axes1);
waitbar(0.8,h,'请稍等, 正在初始化窗口');

set(handles.radiobutton5,'visible','on')
hImage = image( zeros(vidRes(2), vidRes(1), nBands) );
% 将图像展示在GUI中
axes(handles.axes1);
waitbar(1.0,h,'请稍等, 正在初始化窗口');
close(h);
preview(vid, hImage);





%确认拍摄（图片编辑）
% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
global vid
if (vid==-1)
    msgbox('Prview First      ','www.matlabgui.cn','icon','error');
    return;
end
frame = getsnapshot(vid);
 axes(handles.axes1);%使用第一个axes
 imshow(frame);%显示图片
 handles.img=frame;
 guidata(hObject,handles);
imshow(frame);
str=datestr(now);
str=strrep(str,':','_');
str=strrep(str,' ','_');
str=strrep(str,'-','_');
str=strcat(str,'.jpg');
imwrite(frame,str,'jpg');
set(handles.radiobutton5,'visible','off');




%保存图片
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%[FileName,PathName] = uiputfile({'*.jpg','JPEG(*.jpg)';...
%                                 '*.bmp','Bitmap(*.bmp)';...
%                                 '*.gif','GIF(*.gif)';...
%                                 '*.*',  'All Files (*.*)'},...
%                                 'Save Picture','Untitled');
%if FileName==0
%    return;
%    msgbox("保存失败！")
%else
%    h=getframe(handles.axes2);
%    imwrite(h.cdata,[PathName,FileName]);
%     msgbox("保存成功！");
%end;


if true
    % 另存为
    [filename,pathname]= uiputfile({'*.bmp';'*.tif';'*.png';'*.jpg';'*.jpeg'},'Save Image as');
    save=[pathname,filename]; imwrite(handles.img,save);
    msgbox("保存成功！",'保存');
    return;
else
    %覆盖原图
    if handles.img==0
        msgbox('没有可保存的图像','错误');%弹窗提示
        return;
    else
        [filename,pathname,filterindex]=uigetfile({'*.bmp';'*.tif';'*.png';'*.jpg';'*.jpeg'},'save picture');%存储图片路径
    end
    if filterindex==0
        return;%如果取消操作，返回
    else
        str=[pathname,filename];%合成路径+文件名
        axes(handles.axes2);%使用第二个axes
        imwrite(handles.img,str);%写入图片信息，即保存图片
    end
end





%特征点定位
% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)a
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
reqToolboxes = {'Computer Vision Toolbox', 'Image Processing Toolbox'};
if( ~checkToolboxes(reqToolboxes) )
 error('detectFaceParts requires: Computer Vision System Toolbox and Image Processing Toolbox. Please install these toolboxes.');
end
img = handles.img;

detector = buildDetector();
[bbox bbimg faces bbfaces] = detectFaceParts(detector,img,2);
axes(handles.axes2);%使用第一个axes
imshow(uint8(bbimg));%显示图片
handles.img=uint8(bbimg);
guidata(hObject,handles);


%重置
% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button=questdlg('你确定重置吗？','重置','是','否','否'); %内容，标题，选项，默认选项
if strcmp(button,'是')
    handles.img=handles.i;%原图数据重新放入handles.img中
axes(handles.axes2); cla; imshow(handles.img);
set(handles.Rotate,'Value',0);
set(handles.slider2,'Value',0);
%set(handles.slider3,'Value',0);
set(handles.slider4,'Value',0);
set(handles.slider5,'Value',0);
set(handles.slider6,'Value',0);
set(handles.slider12,'Value',0);
set(handles.slider13,'Value',0);
set(handles.slider14,'Value',0);
% cla(handles.axes2);
guidata(hObject,handles);
end



%退出提示框
% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button=questdlg('你确定退出吗？','退出','是','否','是'); %内容，标题，选项，默认选项
if strcmp(button,'是')
    close(main_program1);%退出当前程序
end







% --- Executes during object creation, after setting all properties.
function Rotate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rotate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



%亮度
% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
x=get(hObject,'Value');
img=handles.img;
img=img+x;
axes(handles.axes2); cla; imshow(img)
handles.img=img;
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end






%锐化
% --- Executes on button press in pushbutton84.
function pushbutton84_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
value=(get(hObject,'Value')); 
% I=handles.img;
 %I2=im2gray(I);
 I2=im2gray(I);
 edge=uint8(zeros(size(I2)));
 h=size(I2,1);
 w=size(I2,2);
 for i=1:h-1
     for j=1:w-1
         edge(i,j)=uint8(abs(I2(i,j)-I2(i+1,j+1))+abs(I2(i+1,j)-I2(i,j+1)));% Robert算子
     end
 end
 J=edge+I;
 axes(handles.axes2);
 imshow(J);
 handles.img=J;
 guidata(hObject,handles);


%锐化
% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider

%global R;
%value=(get(hObject,'Value')); 
%R=handles.img;
%I1=rgb2gray(R); %将彩色图变成灰色图
%model=[0,-1;1,0];
%[m,n]=size(I1);
%I2=double(I1);
%for i=2:m-1
%    for j=2:n-1
%        I2(i,j)=I1(i+1,j)-I1(i,j+1);
%    end
%end
%       I2 = I2 + double(R);
%       J=uint8(I2);
%       axes(handles.axes2);
%       imshow(J);
%       handles.img=J;
%       guidata(hObject,handles);
            
%global I;
%img=imread(I);
%i = 5;
%value=(get(hObject,'Value')); 
%w = fspecial('log', [i i], value);%生成高斯-拉普拉斯滤波器
%img_ruihua = filter(img, w, i);
%axes(handles.axes2);
%imshow(img_ruihua);
%handles.img=img_ruihua;
%guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



%饱和度
% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I;
x=get(hObject,'Value');
%RGB=handles.img;
HSV=rgb2hsv(I);%将原图像rgb转化为HSV通道
HSV(:,:,2)=(x+1)*HSV(:,:,2);
HSV(:,:,1)=HSV(:,:,1);
HSV(:,:,3)=HSV(:,:,3);
img=hsv2rgb(HSV);
axes(handles.axes2);
imshow(img);
handles.img=img;
guidata(hObject,handles);




% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



%对比度
% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I;
x=get(hObject,'Value');
%img=handles.img;
J=imadjust(I,[],[],x);
axes(handles.axes2);
imshow(J);
handles.img=J;
guidata(hObject,handles);




% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



%色调
% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I;
x=get(hObject,'Value');
%img=handles.img;
hsv=rgb2hsv(I);
hsv(:,:,1)=(x+1)*hsv(:,:,1);
hsv(:,:,2)=hsv(:,:,2);
hsv(:,:,3)=hsv(:,:,3);
img1=hsv2rgb(hsv);
axes(handles.axes2);
imshow(img1);
handles.img=img1;
guidata(hObject,handles);


%色温
% --- Executes on slider movement.
function slider33_Callback(hObject, eventdata, handles)
% hObject    handle to slider33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
%%
global I;
x=get(hObject,'Value');
%img=handles.img;
img1=im2double(I);
I1=imresize(img1,2);
R=I1(:,:,1);G=I1(:,:,2);B=I1(:,:,3);
%r=R;g=G;b=B*1.2;%冷色调
r=R;g=G;b=B*x;%暖色调
rgb=cat(3,r,g,b);
axes(handles.axes2);%使用第4个axes
imshow(rgb);%显示图片
handles.img=rgb;
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end





% --- Executes during object creation, after setting all properties.
function slider12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



%黑白照
% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
img=handles.img;
img=im2bw(I);     %转换为二值图像
axes(handles.axes2);
imshow(img);
handles.img=img;
guidata(hObject,handles);
msgbox('黑白照滤镜设置成功');%显示弹窗


%光照效果
% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
img=handles.img;
% d--通道数 m--行数 n--列数
[m,n,d]=size(I);
K = 100;%光照强度系数
R = 190;%光照半径
X = n*2/3;%光源坐标
Y = m*2/3;
for i=1:m
    for j=1:n
        distance = sqrt((i-Y)*(i-Y) + (j-X)*(j-X));
        img1(i,j,1) = uint8(uint16(I(i,j,1)) + K * max(0,1-distance/R));
        img1(i,j,2) = uint8(uint16(I(i,j,2)) + K * max(0,1-distance/R));
        img1(i,j,3) = uint8(uint16(I(i,j,3)) + K * max(0,1-distance/R));
    end
end
axes(handles.axes2);
imshow(img1);
handles.img=img1;
guidata(hObject,handles);
msgbox('光照滤镜设置成功');%显示弹窗



%怀旧色
% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
img=handles.img;
[m,n,d]=size(I);
for i=1:m
    for j=1:n
        img1(i,j,1) = 0.393*I(i,j,1)+0.769*I(i,j,2)+0.189*I(i,j,3);
        img1(i,j,2) = 0.349*I(i,j,1)+0.686*I(i,j,2)+0.168*I(i,j,3);
        img1(i,j,3) = 0.272*I(i,j,1)+0.534*I(i,j,2)+0.131*I(i,j,3);
    end
end
axes(handles.axes2);
imshow(img1);
handles.img=img1;
guidata(hObject,handles);
msgbox('怀旧色滤镜设置成功');%显示弹窗




%浮雕
% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
img=handles.img;
[m,n,d]=size(I);
for k=1:d    % d--通道数
    for i=2:m-1 % m--行数
        for j=2:n-1 % n--列数
            img2(i,j,k) = I(i+1,j+1,k)-I(i-1,j-1,k)+128;%浮雕效果算法
            if img2(i,j,k)>255
                img2(i,j,k) = 255; %像素值超过255的都置为255
            elseif img2(i,j,k)<0
                    img2(i,j,k) = 0; %像素值小于0的都置为0
            else
                    img2(i,j,k) = img2(i,j,k);
            end
        end
    end
end
axes(handles.axes2);
imshow(img2);
handles.img=img2;
guidata(hObject,handles);
msgbox('浮雕滤镜设置成功');%显示弹窗



% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%动感模糊
% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
%img=handles.img;
PSF=fspecial('motion',25,11);   %创建运动模糊滤波器
Blurred=imfilter(I,PSF,'conv','circular');  %进行滤波
axes(handles.axes2);
imshow(Blurred);
handles.img=Blurred;
guidata(hObject,handles);
msgbox('动感模糊滤镜设置成功');%显示弹窗


%底片效果   RGB通道值进行反转 im2gray
% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
%img=handles.img;
I1=255-I;
I2=im2gray(I1);    %将RGB图像转换成灰度图像
axes(handles.axes2);
imshow(I2);
handles.img=I2;
guidata(hObject,handles);
msgbox('底片效果滤镜设置成功');%显示弹窗



% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function slider13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end




% --- Executes during object creation, after setting all properties.
function slider14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



%灰度胶片  取三个通道的平均值作为灰度值
% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
%img=handles.img;
I1=I;
imR=im2double(I1(:,:,1));%将每个通道转成double型，否则uint8>255会溢出
        imG=im2double(I1(:,:,2));
        imB=im2double(I1(:,:,3));
        imRGB=round((imR+imG+imB)/3*255);%去三个通道的灰度均值--平均值法，乘以255得到灰度图像的像素值
        I1(:,:,1)=imRGB;%灰度图的三通道RGB值相同
        I1(:,:,2)=imRGB;
        I1(:,:,3)=imRGB;
axes(handles.axes2);
imshow(I1);
handles.img=I1;
guidata(hObject,handles);
msgbox('灰度胶片滤镜设置成功');%显示弹窗


%艺术噪声
% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I;
img=handles.img;
img2=imnoise(I,'gauss',0.03);%添加高斯噪声
%img2=imnoise(I,'salt & pepper',0.03);%添加高斯噪声
axes(handles.axes2);
imshow(img2);
handles.img=img2;
guidata(hObject,handles);
msgbox('艺术噪声滤镜设置成功');%显示弹窗

%油画滑块
% --- Executes on slider movement.
function slider14_Callback(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I;
x=get(hObject,'Value');
%img=handles.img;
se=strel('ball',3,x);%选取球形结构元素
%se = strel('rectangle',[10 10]);
img1=imerode(I,se);%腐蚀灰度图像
axes(handles.axes2);
imshow(img1);
handles.img=img1;
guidata(hObject,handles);




%素描  颜色取反加高斯模糊   再叠加
% --- Executes on slider movement.
function slider13_Callback(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I;
gausigma=get(hObject,'value');%获取活动条的数值
[height,width,k]=size(I);  %获取原图像大小  
N=zeros(height,width);  %取反之后值
 
rc = I(:,:,1);%三通道
gc = I(:,:,2);
bc = I(:,:,3);
 
%选择一个通道进行处理
channel = gc;
out=zeros(height,width); 
%颜色取反      每个像素值减去当前通道的像素值的方法实现的。
for i=1:height  
    for j=1:width  
        N(i,j)=uint8(255-channel(i,j));   %double  取反操作  为了将图像的颜色从原始颜色转换为其互补颜色
    end  
end 
%高斯模糊
gausize = 9;     %滤波器大小，越大越模糊
% gausigma = 10;    %越大越模糊
GH = fspecial('gaussian', gausize, gausigma);%构造高斯模糊滤波器，高斯模糊处理，以减少噪声
G = imfilter(N, GH);%对图像进行滤波处理
 
for i=1:height  
    for j=1:width  
        b=double(G(i,j));  %高斯模糊后的图像
        a=double(channel(i,j));  %原图某一个通道
        temp=a+a*b/(255-b);  %绿色通道 gc与高斯模糊后的图像进行叠加，实现颜色减淡效果。 
        out(i,j)=uint8(min(temp,255)); %每个像素，计算颜色减淡后的值 temp，然后将其存储在输出图像 out 中。
    end  
end
axes(handles.axes2);%显示图像
imshow(out/255);   %imshow像素值的范围是 0 到 1 之间。
handles.img=out/255;
guidata(hObject,handles);



% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2




%羽化   当前像素和中心点距离
% --- Executes on slider movement.
function slider12_Callback(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I;
%img=handles.img;
mSize=get(hObject,'Value');
[m,n,k]=size(I);%获取原图像大小
centerX = n/2;%顶点距中点的距离平方(计算图像中心点的坐标)
centerY = m/2;
%根据滑动条值计算中心点到图像边缘的距离，以确定模糊程度。
diff = (centerX*centerX + centerY*centerY) * mSize;
for i=1:m
    for j=1:n
        dx = centerX - j;%当前点距中点的距离
        dy = centerY - i;%计算当前像素点到图像中心点的水平和垂直距离。
        dstSq = dx * dx + dy * dy;%计算当前像素点到图像中心点距离的平方。
        V = 128 * dstSq / diff;%根据当前像素点到图像中心点的距离，计算增加的模糊程度。
        img8(i,j,1) = I(i,j,1) + V;%额外增加V实现朦胧效果  
        img8(i,j,2) = I(i,j,2) + V;%模糊程度应用到原始图像的每个通道上，实现模糊效果。
        img8(i,j,3) = I(i,j,3) + V;
    end
end
img2=cat(3,img8(:,:,1),img8(:,:,2),img8(:,:,3));%将三个通道连接起来
axes(handles.axes2);%显示图像
imshow(img2);


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider16_Callback(hObject, eventdata, handles)
% hObject    handle to slider16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider17_Callback(hObject, eventdata, handles)
% hObject    handle to slider17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider18_Callback(hObject, eventdata, handles)
% hObject    handle to slider18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider19_Callback(hObject, eventdata, handles)
% hObject    handle to slider19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider20_Callback(hObject, eventdata, handles)
% hObject    handle to slider20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



%美白    动态阈值法:白点检测和白点调整
% --- Executes on slider movement.
function slider22_Callback(hObject, eventdata, handles)
% hObject    handle to slider22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
mb=handles.img;%读取原图像
value=get(hObject,'Value');

 I1=rgb2ycbcr(mb);%将图片的RGB值转换成YCbCr值
 YY=I1(:,:,1);%YY为亮度信号
 Cb=I1(:,:,2);%Cb为蓝色色度分量
 Cr=I1(:,:,3);%Cy为红色色度分量
 [x y z]=size(I1);%获取图像大小
 tst=zeros(x,y);%建立大小为xy的零矩阵
 Mb=mean(mean(Cb));%返回Cb矩阵的包含每列均值的行向量的均值
 Mr=mean(mean(Cr));%返回Cy矩阵的包含每列均值的行向量的均值
%  计算Cb、Cr的均方差
 Tb=Cb-Mb;
 Tr=Cr-Mr;
 Db=sum(sum((Tb).*(Tb)))/(x*y);
 Dr=sum(sum((Tr).*(Tr)))/(x*y);
%  根据阀值的要求提取出near-white区域的像素点
 cnt=1;
 for i=1:x
     for j=1:y
         b1=Cb(i,j)-(Mb+Db*sign(Mb));%sign为符号函数
         b2=Cr(i,j)-(Mr+Dr*sign(Mr));
         if (b1<abs(1.5*Db)&&b2<abs(1.5*Dr))
             J(cnt)=YY(i,j);
             tst(i,j)=YY(i,j);
             cnt=cnt+1;
         end
     end
 end
  cnt=cnt-1;
  K=sort(J,'descend');%将提取出的像素点按降序排列
  nn=round(cnt/(value+6.05));%参考白点
  H(1:nn)=K(1:nn);%提取出near-white区域中的参考白点
% 提取出参考白点的RGB三信道的值
  mn=min(H);
  for i=1:x
      for j=1:y
          if tst(i,j)<mn
              tst(i,j)=0;
          else
              tst(i,j)=1;
          end
      end
  end
  R=mb(:,:,1);
  G=mb(:,:,2);
  B=mb(:,:,3);
  R=double(R).*tst;
  G=double(G).*tst;
  B=double(B).*tst;
%   计算参考白点的RGB的均值
  Rav=mean(mean(R));
  Gav=mean(mean(G));
  Bav=mean(mean(B));
  Ymax=double(max(max(YY)))*0.15;%计算图片亮度的最大值
%   计算出RGB三信道的增益
  Rgain=Ymax/Rav;
  Ggain=Ymax/Gav;
  Bgain=Ymax/Bav;
%   通过增益调整图片的RGB三信道
  mb(:,:,1)=mb(:,:,1)*Rgain;
  mb(:,:,2)=mb(:,:,2)*Ggain;
  mb(:,:,3)=mb(:,:,3)*Bgain
axes(handles.axes4);%显示效果图像
imshow(mb);
handles.img=mb;
guidata(hObject,handles);




% --- Executes during object creation, after setting all properties.
function slider22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



%磨皮    双边滤波
% --- Executes on slider movement.
function slider23_Callback(hObject, eventdata, handles)
% hObject    handle to slider23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
%global I;
img0=handles.img;%读取原图像
value=get(hObject,'Value');
 tempsize = 5;%控制高斯滤波器大小的参数
 sigma1 = 5;%控制高斯滤波器的标准差，越大，平滑程度越好
 sigma2=value+0.01;%控制灰度的敏感性，灰度差越大，权重越小
%   padarray用于填充高斯滤波器数组，便于卷积操作，否则图片边界易出现黑边
  img = double(padarray(img0,[tempsize,tempsize],0))/255;% 在每个维度都添加tempsize个0
  %通道提取
  imgr = img(:,:,1);
  imgg = img(:,:,2);
  imgb = img(:,:,3);
  [m,n] = size(imgr);
  img(:,:,1) = B_filter(imgr,tempsize,sigma1,sigma2);
  img(:,:,2) = B_filter(imgg,tempsize,sigma1,sigma2);
  img(:,:,3) = B_filter(imgb,tempsize,sigma1,sigma2);
  img=img(tempsize+1:m-tempsize,tempsize+1:n-tempsize,:);%只显示彩色区域，取出黑边
 axes(handles.axes4);%显示效果图像
 imshow(img);
 handles.img=img;
 guidata(hObject,handles)
 
  function out = B_filter(Img,tempsize,sigma0,sigma1)
  %高斯滤波器模板定义      相邻像素灰度值的加权平均值
  gauss = fspecial('gaussian',2*tempsize+1,sigma0);%创建旋转对称的高斯低通滤波器
  [m,n] = size(Img);
  for i = 1+ tempsize : m - tempsize
          for j = 1+ tempsize : n - tempsize
          %提取处理区域得到梯度敏感矩阵
          temp = abs(Img(i - tempsize:i + tempsize,j - tempsize:j + tempsize) - Img(i,j));
          temp = exp(-temp.^2/(2*sigma1^2));
          %得到双边滤波器并将权值和化为一
          filter = gauss.*temp;% 双边滤波权值
          filter = filter/sum(filter(:));% 权值归一化
          %卷积
          Img(i,j) = sum(sum((Img(i - tempsize:i + tempsize,j - tempsize:j + tempsize).*filter)));% 得到滤波后的图像
          end
            end
            out = Img;



% --- Executes during object creation, after setting all properties.
function slider23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function slider24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end





%大眼      基于最佳邻插值算法实现。
% --- Executes on slider movement.
function slider25_Callback(hObject, eventdata, handles)
% hObject    handle to slider25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
img=getframe;%获取当前坐标轴的图像
value=get(hObject,'Value');
img=img.cdata;
[J,rect]=imcrop(img);%选取框
posx=round(rect(3)/2+rect(2));%选取框中点
posy=round(rect(1)+rect(4)/2);
%img2=bigger(img,posx,posy,25);%调用大眼函数
img2=bigger(img,posx,posy,value);%调用大眼函数
axes(handles.axes4);%显示效果图像
imshow(img2);
handles.img=img2;
guidata(hObject,handles);



%白牙
% --- Executes on button press in pushbutton63.
function pushbutton63_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img=handles.img;%读取图像
 mask = roipoly(img);%蒙版选择
 [ M,N,~ ] = size(mask);%获取蒙版大小
 x1 = immultiply( mask,img( :,:,1 ) );%将选取的范围和原图通道叠加
 x2 = immultiply( mask,img( :,:,2 ) );
 x3 = immultiply( mask,img( :,:,3 ) );
 f = cat( 3,x1,x2,x3 );%将三个通道连接在一起,得到选取的图像
 img2=img-f;%原图减去选取的区域
    for i=1:M%遍历选取的图像，若像素值不为0，就增亮
        for j=1:N
            if(f(i,j)~=0)
                f(i,j,:)=imadd(f(i,j,:),16);
            end
        end
    end     
     f=imadd(f,img2);%将选取区域增亮后和除该区域的图像相加
axes(handles.axes4);%显示效果图
imshow(f);%显示图片
handles.img=f;
guidata(hObject,handles);



% --- Executes during object creation, after setting all properties.
function slider25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end







% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




%打开图片（人像）
% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;%定义全局变量，为了后面的还原保存数据
global im;
[filename,pathname,filterindex]=...
uigetfile({'*.*';'*.bmp';'*.tif';'*.png';'*.jpg';'*.jpeg'},'请选择图片');%选择图片格式
str=[pathname filename];%合成路径+文件名
s=str;
handles.i=imread(str);
handles.filebig=filterindex;
if filterindex==0
    msgbox('选择图像失败','error');
    return
else
    im=imread(str);%读取图片
end
axes(handles.axes3);%使用第一个axes
imshow(im);%显示图片
handles.img=im;
guidata(hObject,handles);



%从摄像机获取（人像）
% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = waitbar(0.1,'请稍等，正在检查设备......');
global vid
vid = videoinput('winvideo',1);
vid_src=getselectedsource(vid);
data = getsnapshot(vid);
waitbar(0.5,h,'Please wait, initialize the window');
set(vid,'TriggerRepeat',Inf);
set(vid,'FramesPerTrigger',1);
set(vid,'FrameGrabInterval',1);
vidRes = get(vid, 'VideoResolution');
nBands = get(vid, 'NumberOfBands');
axes(handles.axes1);
waitbar(0.8,h,'Please wait, initialize the window');
set(handles.radiobutton4,'visible','on');

hImage = image( zeros(vidRes(2), vidRes(1), nBands) );
% Display the video data in your GUI.
axes(handles.axes1);
waitbar(1.0,h,'Please wait, initialize the window');
close(h);
preview(vid, hImage);




%保存图像（人像）
% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if true
    % 另存为
    [filename,pathname]= uiputfile({'*.bmp';'*.tif';'*.png';'*.jpg';'*.jpeg'},'保存图像');
    save=[pathname,filename]; imwrite(handles.img,save);
    msgbox("保存成功！",'保存');
    return;
else
    %覆盖原图
    if handles.img==0
        msgbox('没有可保存的图像','错误');%弹窗提示
        return;
    else
        [filename,pathname,filterindex]=uigetfile({'*.bmp';'*.tif';'*.png';'*.jpg';'*.jpeg'},'保存图像');%存储图片路径
    end
    if filterindex==0
        return;%如果取消操作，返回
    else
        str=[pathname,filename];%合成路径+文件名
        axes(handles.axes3);%使用第二个axes
        imwrite(handles.img,str);%写入图片信息，即保存图片
    end
end


%特征点定位
% --- Executes on button press in pushbutton49.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
reqToolboxes = {'Computer Vision Toolbox', 'Image Processing Toolbox'};
if( ~checkToolboxes(reqToolboxes) )
 error('detectFaceParts requires: Computer Vision System Toolbox and Image Processing Toolbox. Please install these toolboxes.');
end
img = handles.img;

detector = buildDetector();
[bbox bbimg faces bbfaces] = detectFaceParts(detector,img,2);
axes(handles.axes4);%使用第一个axes
imshow(uint8(bbimg));%显示图片
handles.img=uint8(bbimg);
guidata(hObject,handles);
%for i=1:size(bbfaces,1)
%axes(handles.axes4);%使用第一个axes
%imshow(uint8(bbfaces{i}));%显示图片
%handles.img=uint8(bbfaces{i});
%guidata(hObject,handles);
%%figure;imshow(uint8(bbfaces{i}));
%end



%重置（人像）
% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button=questdlg('你确定重置吗？','重置','是','否','否'); %内容，标题，选项，默认选项
if strcmp(button,'是')
    handles.img=handles.i;%原图数据重新放入handles.img中
axes(handles.axes4); cla; imshow(handles.img);
% 令布局中的滑块归为默认位置
set(handles.slider22,'Value',0);
set(handles.slider23,'Value',0);
set(handles.slider24,'Value',0);
set(handles.slider25,'Value',0);
% cla(handles.axes4);
guidata(hObject,handles);
end





%退出（人像）
% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button=questdlg('你确定退出吗？','退出','是','否','否'); %内容，标题，选项，默认选项
if strcmp(button,'是')
    close(main_program1);%退出当前程序
end




function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






%祛痣祛痘
% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img=getframe;%获取当前坐标轴的图像
img=img.cdata;%原图像
img2=qudou(img);%调用祛痘函数 
axes(handles.axes4);%使用第一个axes
imshow(img2);%显示图片
handles.img=img2;
guidata(hObject,handles);




%马赛克
% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Image = handles.img; % 替换为你自己的图像文件路径
rect = round(getrect);  %返回区域位置信息
cropImage = imcrop(Image ,rect);  %索引图像
%% 设置马赛克块的大小
blockSize = 20;
%将源图像三个通道值取出
fr = cropImage(:,:,1);
fg = cropImage(:,:,2);
fb = cropImage(:,:,3);
mosaicr = mosaic(fr, blockSize);
mosaicg = mosaic(fg, blockSize);
mosaicb = mosaic(fb, blockSize);
mosaicImage = cat(3,mosaicr, mosaicg, mosaicb);
% 将马赛克图像叠加到原始图像中
Image(rect(2):rect(2)+rect(4), rect(1):rect(1)+rect(3), :) = mosaicImage;
% 显示结果
axes(handles.axes4);%使用第一个axes
imshow(Image);%显示图片
handles.img=Image;
guidata(hObject,handles);
%% 马赛克效果实现
function mosaicImage = mosaic(originalImage, blockSize)
% 获取图像的大小
[rows, cols, ~] = size(originalImage);
% 创建马赛克效果
mosaicImage = originalImage;
for i = 1:blockSize:rows
    for j = 1:blockSize:cols
        % 计算每个块的平均颜色
        block = originalImage(i:min(i+blockSize-1,rows), j:min(j+blockSize-1,cols), :);
        averageColor = mean(mean(block,1),2);
        % 将整个块设置为均值颜色
        mosaicImage(i:min(i+blockSize-1,rows), j:min(j+blockSize-1,cols), :) = averageColor;
    end
end


      



%贴纸
% --- Executes on button press in pushbutton64.
function pushbutton64_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
%img=handles.img;%读取图像
if isempty(im)
    msgbox('你还未载入图像')
    return
end
%截取图像，
%cropI是截取出的图像
%croprect 是截取的矩形区域
[cropI,croprect] = imcrop(im);
x = round(croprect(1));
y = round(croprect(2));
w = round(croprect(3));
h = round(croprect(4));

procI = im;
%读取贴纸图像
%tI是贴纸图像内容 ，mask是透明信息
[tI,map,mask] = imread('贴纸\1.png');
%图像转为截取的区域大小
tI = imresize(tI,[h,w]);
mask = imresize(mask,[h,w]);
%遍历像素
for i=1:h
    for j=1:w
        %只选用mask的部分
        if mask(i,j) > 127
            %赋予贴纸中的像素值
            procI(y+i-1,x+j-1,:) = tI(i,j,:);
            
        end
    end
end
axes(handles.axes4);%显示效果图
imshow(procI);%显示图片
handles.img=procI;
guidata(hObject,handles);



%贴纸
% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
%img=handles.img;%读取图像
if isempty(im)
    msgbox('你还未载入图像')
    return
end

%axes(handles.axes4)
%imshow(im)

%截取图像，
%cropI是截取出的图像
%croprect 是截取的矩形区域
[cropI,croprect] = imcrop(im);
x = round(croprect(1));
y = round(croprect(2));
w = round(croprect(3));
h = round(croprect(4));

procI = im;
%读取贴纸图像
%tI是贴纸图像内容 ，mask是透明信息
[tI,map,mask] = imread('贴纸\2.png');
%图像转为截取的区域大小
tI = imresize(tI,[h,w]);
mask = imresize(mask,[h,w]);
%遍历像素
for i=1:h
    for j=1:w
        %只选用mask的部分
        if mask(i,j) > 127
            %赋予贴纸中的像素值
            procI(y+i-1,x+j-1,:) = tI(i,j,:);
            
        end
    end
end
axes(handles.axes4);%显示效果图
imshow(procI);%显示图片
handles.img=procI;
guidata(hObject,handles);

%贴纸
% --- Executes on button press in pushbutton66.
function pushbutton66_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
%img=handles.img;%读取图像
if isempty(im)
    msgbox('你还未载入图像')
    return
end

%axes(handles.axes4)
%imshow(im)
%截取图像，
%cropI是截取出的图像
%croprect 是截取的矩形区域
[cropI,croprect] = imcrop(im);
x = round(croprect(1));
y = round(croprect(2));
w = round(croprect(3));
h = round(croprect(4));

procI = im;
%读取贴纸图像
%tI是贴纸图像内容 ，mask是透明信息
[tI,map,mask] = imread('贴纸\3.png');
%图像转为截取的区域大小
tI = imresize(tI,[h,w]);
mask = imresize(mask,[h,w]);
%遍历像素
for i=1:h
    for j=1:w
        %只选用mask的部分
        if mask(i,j) > 127
            %赋予贴纸中的像素值
            procI(y+i-1,x+j-1,:) = tI(i,j,:);
            
        end
    end
end
axes(handles.axes4);%显示效果图
imshow(procI);%显示图片
handles.img=procI;
guidata(hObject,handles);


%相框
% --- Executes on button press in pushbutton67.
function pushbutton67_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
%I=handles.img;
[fore_img,map,alpha]=imread('xiang1.png');
% 获取原图的行列数，便于在函数中获取行列值，将贴图大小与图片大小统一
[m,n,h]=size(im);
angle=0;
pos_x=0;
pos_y=n/2;
img1 = stick_picture1(im,fore_img,pos_x,pos_y,m,n,angle,alpha);
axes(handles.axes4);%使用第一个axes
imshow(img1);%显示图片
handles.img=img1;
guidata(hObject,handles);





%相框2
% --- Executes on button press in pushbutton69.
function pushbutton69_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
%I=handles.img;
[fore_img,map,alpha]=imread('xiang8.png');
% 获取原图的行列数，便于在函数中获取行列值，将贴图大小与图片大小统一   
[m,n,h]=size(im);
angle=0;
pos_x=0;
pos_y=n/2;
img1 = stick_picture1(im,fore_img,pos_x,pos_y,m,n,angle,alpha);
axes(handles.axes4);%使用第一个axes
imshow(img1);%显示图片
handles.img=img1;
guidata(hObject,handles);

%相框
% --- Executes on button press in pushbutton70.
function pushbutton70_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
       % I=handles.img;
        [fore_img,map,alpha]=imread('xiang11.png');
% 获取原图的行列数，便于在函数中获取行列值，将贴图大小与图片大小统一   
        [m,n,h]=size(im);
        angle=0;
        pos_x=0;
        pos_y=n/2;
        img1 = stick_picture1(im,fore_img,pos_x,pos_y,m,n,angle,alpha);
         axes(handles.axes4);%使用第一个axes
            imshow(img1);%显示图片
            handles.img=img1;
            guidata(hObject,handles);


%相框            
% --- Executes on button press in pushbutton71.
function pushbutton71_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
 %I=handles.img;
        [fore_img,map,alpha]=imread('xiang10.png');
% 获取原图的行列数，便于在函数中获取行列值，将贴图大小与图片大小统一   
        [m,n,h]=size(im);
        angle=0;
        pos_x=0;
        pos_y=n/2;
        img1 = stick_picture1(im,fore_img,pos_x,pos_y,m,n,angle,alpha);
         axes(handles.axes4);%使用第一个axes
            imshow(img1);%显示图片
            handles.img=img1;
            guidata(hObject,handles);


%贴纸
% --- Executes on button press in pushbutton68.
function pushbutton68_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
%img=handles.img;%读取图像
if isempty(im)
    msgbox('你还未载入图像')
    return
end
axes(handles.axes4)
imshow(im)
%截取图像，
%cropI是截取出的图像
%croprect 是截取的矩形区域
[cropI,croprect] = imcrop(im);
x = round(croprect(1));
y = round(croprect(2));
w = round(croprect(3));
h = round(croprect(4));

procI = im;
%读取贴纸图像
%tI是贴纸图像内容 ，mask是透明信息
[tI,map,mask] = imread('贴纸\4.png');
%图像转为截取的区域大小
tI = imresize(tI,[h,w]);
mask = imresize(mask,[h,w]);
%遍历像素
for i=1:h
    for j=1:w
        %只选用mask的部分
        if mask(i,j) > 127
            %赋予贴纸中的像素值
            procI(y+i-1,x+j-1,:) = tI(i,j,:);
            
        end
    end
end
axes(handles.axes4);%显示效果图
imshow(procI);%显示图片
handles.img=procI;
guidata(hObject,handles);
      


%确认拍摄（人像）
% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
global vid
if (vid==-1)
    msgbox('Prview First      ','www.matlabgui.cn','icon','error');
    return;
end
frame = getsnapshot(vid);
 axes(handles.axes3);%使用第一个axes
 imshow(frame);%显示图片
 handles.img=frame;
 guidata(hObject,handles);
imshow(frame);
str=datestr(now);
str=strrep(str,':','_');
str=strrep(str,' ','_');
str=strrep(str,'-','_');
str=strcat(str,'.jpg');
imwrite(frame,str,'jpg');
set(handles.radiobutton4,'visible','off');





% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6
%img =handles.img;
%img1=adjustPicBgColor(img,[1,1,1],[1,0,0],0.09);
%set(handles.radiobutton7,'value',0);
% axes(handles.axes4);%使用第一个axes
% imshow(img1);%显示图片
% handles.img=img1;
% guidata(hObject,handles);





%蓝底
% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7
%img =handles.img;

%img1=adjustPicBgColor(img,[1,1,1],[0.11,0.6,1],0.09);
%set(handles.radiobutton6,'value',0);
% axes(handles.axes4);%使用第一个axes
% imshow(img1);%显示图片
% handles.img=img1;
% guidata(hObject,handles);




% --- Executes on button press in pushbutton76.
function pushbutton76_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



%证件照
% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(hObject,'tag');
%str = get(eventdata.NewValue,'Tag');
axes(handles.axes4) %% 将axes4置为当前坐标系
switch str
    case 'radiobutton6'
       img =handles.img;
img1=adjustPicBgColor(img,[1,1,1],[1,0,0],0.09);

    case 'radiobutton7'
        img =handles.img;
img1=adjustPicBgColor(img,[1,1,1],[0.11,0.6,1],0.09);

 case 'radiobutton9'
   img1=handles.img;

end
imshow(img1);%显示图片
handles.img=img1;
guidata(hObject,handles);



% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9



%添加文本
% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img=getframe;%获取当前坐标轴的图像
img=img.cdata;%原图像
axes(handles.axes4);%先将原图像显示在第二个坐标轴上
imshow(img);
str=get(handles.edit3,'string');%先获取输入的文字
[J,rect]=imcrop(img);%选取文字框
posx=round(rect(1));%返回位置
posy=round(rect(2));
var = get(handles.popupmenu3,'Value');
%axes(handles.axes4)               % 将axes4置为当前坐标系
switch var
    case 1                        % 选中第一行
    str=get(handles.edit3,'string');%先获取输入的文字
        text(posx,posy,str,'color',[0,0,0],'FontSize',15,'FontWeight','bold');
    case 2                        % 选中第二行
    str=get(handles.edit3,'string');%先获取输入的文字
        text(posx,posy,str,'color',[1,0,0],'FontSize',15,'FontWeight','bold');
    case 3                        % 选中第三行
     str=get(handles.edit3,'string');%先获取输入的文字
      text(posx,posy,str,'color',[1,1,1],'FontSize',15,'FontWeight','bold');
end


%text(posx,posy,str);%添加文本



%文本
function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2doublehandles.img(get(hObject,'String')) returns contents of edit3 as a double




% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



%字体颜色
% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
%var = get(handles.popupmenu3,'Value');
%%axes(handles.axes4)               % 将axes4置为当前坐标系
%switch var
%    case 1                        % 选中第一行
%    str=get(handles.edit3,'string');%先获取输入的文字
%        set(str,'color',[0,0,0]);
%    case 2                        % 选中第二行
%    str=get(handles.edit3,'string');%先获取输入的文字
%        set(str,'color',[1,0,0]);
%    case 3                        % 选中第三行
%     str=get(handles.edit3,'string');%先获取输入的文字
%      text(str,'color',[1,1,1],'FontSize',12);
%end




% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%axis off;        % 去掉坐标轴

set( gca, 'XColor', 'w' ); 
set( gca, 'YColor', 'w' );
% Hint: place code in OpeningFcn to populate axes3


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%axis off;        % 去掉坐标轴
% Hint: place code in OpeningFcn to populate axes4


%图像合成
% --- Executes on button press in pushbutton79.
function pushbutton79_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img = handles.img;
[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像2');
background=imread([pn fn]);  
[m,n,h]=size(img);
background=imresize(background,[m,n]);%图像相加,x,y必须具有相同大小和类
img2 = imadd(0.4*background,0.6*img);
axes(handles.axes4);%使用第4个axes
imshow(img2);%显示图片
handles.img=img2;
guidata(hObject,handles);




% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function pushbutton64_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pushbutton66_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function pushbutton65_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



%拼图
% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7
var = get(handles.popupmenu7,'Value');
axes(handles.axes4)               % 将axes1置为当前坐标系
switch var
    case 1                        % 选中第一行
     [fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像1');
r_image1=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像2');
r_image2=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像3');
r_image3=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像4');
r_image4=imread([pn fn]);  

% 待拼接文件
imfile = {r_image1, r_image2, r_image3, r_image4};

% 读入文件，并调整大小、转换格式
A = cell(1,4);
for i=1:4
    % 读入图像数据
    %[X, map] = gray2ind(imfile{i});
    X = rgb2ind(imfile{i}, 65535)
    [X, map] = rgb2ind(imfile{i},0.1);
    if size(X,3) == 1
        % 有些灰度图像无map数据
        if isempty(map)
            map = gray;
        end
        % 转换为真彩色
        X = ind2rgb(X,map);
    end
    % 调整图像大小，并转换数据格式

    A{i} = im2double( imresize(X, [750 512]) );
end
 
% 拼接图像并显示
A = [A{1} A{2}; A{3} A{4}];
axes(handles.axes4);%使用第4个axes
imshow(A);%显示图片
handles.img=A;
guidata(hObject,handles);
    case 2                        % 选中第二行
     [fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像1');
r_image1=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像2');
r_image2=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像3');
r_image3=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像4');
r_image4=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像5');
r_image5=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像6');
r_image6=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像7');
r_image7=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像8');
r_image8=imread([pn fn]);  

[fn,pn]=uigetfile({'*.bmp;*.tif;*.jpg;*.png;*.pgm'},'请选择拼接图像9');
r_image9=imread([pn fn]);  

% 待拼接文件
imfile = {r_image1, r_image2, r_image3, r_image4,r_image5,r_image6,r_image7,r_image8,r_image9};

% 读入文件，并调整大小、转换格式
A = cell(3,3);
for i=1:9
    % 读入图像数据
    %[X, map] = gray2ind(imfile{i});
    X = rgb2ind(imfile{i}, 65535)
    [X, map] = rgb2ind(imfile{i},0.1);
    if size(X,3) == 1
        % 有些灰度图像无map数据
        if isempty(map)
            map = gray;
        end
        % 转换为真彩色
        X = ind2rgb(X,map);
    end
    % 调整图像大小，并转换数据格式

    A{i} = im2double( imresize(X, [750 512]) );
end
 
% 拼接图像并显示
A = [A{1} A{2} A{3}; A{4} A{5} A{6};A{7} A{8} A{9}];
axes(handles.axes4);%使用第4个axes
imshow(A);%显示图片
handles.img=A;
guidata(hObject,handles);
end




% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton82.
function pushbutton82_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton83.
function pushbutton83_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%图像去噪
% --- Executes on button press in pushbutton85.
function pushbutton85_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Img = handles.img;
imgr = Img(:, :, 1);
imgr = double(imgr);
R=wiener2(imgr,[3 3]); %对加噪图像进行二维自适应维纳滤波
img1 = uint8(R);
imgg = Img(:, :, 2);
imgg = double(imgg);
G=wiener2(imgg,[3 3]); %对加噪图像进行二维自适应维纳滤波
img2 = uint8(G);
imgb = Img(:, :, 3);
imgb = double(imgb);
B=wiener2(imgb,[3 3]); %对加噪图像进行二维自适应维纳滤波
img3 = uint8(B);
result = cat(3,img1,img2,img3);
axes(handles.axes2);%使用第4个axes
imshow(result);%显示图片
handles.img=result;
guidata(hObject,handles);






%添加水印
% --- Executes on button press in pushbutton80.
function pushbutton86_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton80 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)



%添加水印
% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9
img=handles.img;
axes(handles.axes4);%先将原图像显示在第二个坐标轴上
imshow(img);
var = get(handles.popupmenu9,'Value');
%axes(handles.axes4)               % 将axes4置为当前坐标系
switch var
    case 1                        % 左上角 

%str=get(text);%先获取输入的文字
str=['  YINHUI' sprintf('\n') ' 美图秀秀'];
text( 'string',str, 'Units','normalized','position',[0.74,0.95],  'FontSize',12,'FontWeight','Bold','Color',[1 0.75 0.79],'FontName','FixedWidth');  
    case 2                        % 左下角
 
%str=get(text);%先获取输入的文字
str=['  YINHUI' sprintf('\n') ' 美图秀秀'];
text( 'string',str, 'Units','normalized','position',[0.74,0.06],  'FontSize',12,'FontWeight','Bold','Color',[1 0.75 0.79],'FontName','FixedWidth');  
    case 3                        % 右上角
    
%str=get(text);%先获取输入的文字
str=['YINHUI' sprintf('\n') '美图秀秀'];
text( 'string',str, 'Units','normalized','position',[0.03,0.95],  'FontSize',12,'FontWeight','Bold','Color',[1 0.75 0.79],'FontName','FixedWidth');  
case 4                        % 右下角
   
%str=get(text);%先获取输入的文字
str=['YINHUI' sprintf('\n') '美图秀秀'];
text( 'string',str, 'Units','normalized','position',[0.03,0.06],  'FontSize',12,'FontWeight','Bold','Color',[1 0.75 0.79],'FontName','FixedWidth');  
end

% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function slider33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function uibuttongroup2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
