 function varargout = start(varargin)
%START MATLAB code file for start.fig
%      START, by itself, creates a new START or raises the existing
%      singleton*.
%
%      H = START returns the handle to a new START or the handle to
%      the existing singleton*.
%
%      START('Property','Value',...) creates a new START using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to start_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      START('CALLBACK') and START('CALLBACK',hObject,...) call the
%      local function named CALLBACK in START.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help start

% Last Modified by GUIDE v2.5 14-Apr-2024 21:54:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @start_OpeningFcn, ...
                   'gui_OutputFcn',  @start_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before start is made visible.
function start_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for start
handles.output = hObject;


% 设置背景图片
set(handles.axes3,'visible','off');
axes(handles.axes3);
image1=imread('R-C.jpg');
imshow(image1);

%设置在GUI打开时就显示图标图片
set(handles.axes1,'visible','off');
axes(handles.axes1);
image=imread('icon.jpg');
imshow(image);

strCell = {'美图秀秀'};
% 逐列显示文本
for i = 1 : numel(strCell)  %穷举每条诗句
    strTemp = strCell{1};   %获取第i条诗句
    str=strTemp;
    text('string', str, 'position', [850-100*i 710], 'Horizontal', 'right',...
        'FontName', '华文楷体', 'FontSize', 30, 'FontWeight', 'bold');
end


%
%
%ha=axes('units','normalized','pos',[0 0 1 1]);
%uistack(ha,'down');
%ii=imread('startbg.jpg');
%image(ii);
%colormap gray
%set(ha,'handlevisibility','off','visible','on');
%axis off


% 设置背景图片
%ax3=axes('units','normalized','pos',[0 0 1 1]); % axes 创建坐标区  [x y 宽 高]
%uistack(ax3,'down');  % 对 UI 组件的视图层叠重新排序
%background=imread('startbg.jpg'); %从图形文件读取图像
%image(background);
%colormap gray  %查看并设置当前颜色图
%set(ax3,'handlevisibility','off','visible','on');

% 贴logo
%ax1=axes('units','normalized','pos',[0.47 0.62 0.09 0.12]); % axes 创建坐标区
%uistack(ax1,'top');  % 对 UI 组件的视图层叠重新排序
%ii=imread('icon.jpg');
%image(ii);
%colormap gray  %查看并设置当前颜色图
%set(ax1,'handlevisibility','off','visible','on');
%axis off

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes start wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = start_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close (start);
set(main_program1,'visible','on')





% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

%设置自定义背景图
%h=axes('units','normalized','pos',[0 0 1 1]);
%uistack(h,'down');
%i=imread('startbackground.jpg');
%image(i);
%colormap gray    %让显示的图色戒=阶是灰色的
%set(h,'handlevisibility','off','visible','on');
%ha=axes('units','normalized','pos',[0 0 1 1]);
%uistack(ha,'down');
%ii=imread('startbackground.jpg');
%image(ii);
%colormap gray
%set(ha,'handlevisibility','off','visible','on');
%axis off


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3
