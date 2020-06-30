function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 27-Jun-2020 17:41:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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

% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbuttonresimsec.
function pushbuttonresimsec_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonresimsec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
[filename,pathname]=uigetfile({'*.*';'*.jpg';'*.gif';'*.png';'*.ppm';'*.jpeg';'*.tif';'*.pgm'}, 'Görüntü Dosyasýný Seç:','Multiselect','On');
axes(handles.axesilk)
image=imread(filename);
boyut = dir(filename);
set(handles.textb1,'string',num2str(boyut.bytes));
set(handles.textb2,'string',"__");
imshow(image);

% --- Executes on button press in pushbuttongriresim.
function pushbuttongriresim_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttongriresim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image;

axes(handles.axesson)
griresim=GriSeviyeDonusum(image);
imshow(griresim);


% --- Executes on button press in pushbuttonlogdonusum.
function pushbuttonlogdonusum_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonlogdonusum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
sayi=str2double(get(handles.editlogdonusum,'String'));
axes(handles.axesson)
ld=LogDonusumu(image,sayi);
imshow(ld);



function editlogdonusum_Callback(hObject, eventdata, handles)
% hObject    handle to editlogdonusum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editlogdonusum as text
%        str2double(get(hObject,'String')) returns contents of editlogdonusum as a double


% --- Executes during object creation, after setting all properties.
function editlogdonusum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editlogdonusum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonkontrastgerme.
function pushbuttonkontrastgerme_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonkontrastgerme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
k=KontrastGerme(image);
imshow(k);



function editesik_Callback(hObject, eventdata, handles)
% hObject    handle to editesik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editesik as text
%        str2double(get(hObject,'String')) returns contents of editesik as a double


% --- Executes during object creation, after setting all properties.
function editesik_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editesik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonesikleme.
function pushbuttonesikleme_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonesikleme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
sayi=str2double(get(handles.editesik,'String'));

if sayi<0
    msgbox('Esikleme Deðeri 0dan Küçük Olamaz..!', 'Error','error');
else
    axes(handles.axesson)
    e=Esikleme(image,sayi);
    imshow(e);
end
    
% --- Executes on button press in pushbuttonhe.
function pushbuttonhe_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonhe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
he=HistogramEsitleme(image);
imshow(he);


% --- Executes on button press in pushbuttonmean.
function pushbuttonmean_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonmean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
mean=Mean(image);
imshow(mean);


% --- Executes on button press in pushbuttonmedian.
function pushbuttonmedian_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonmedian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
median=Median(image);
imshow(median);


% --- Executes on button press in pushbuttongauss.
function pushbuttongauss_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttongauss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
ga=Gauss(image,3);
imshow(ga);


% --- Executes on button press in pushbuttonsobel.
function pushbuttonsobel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonsobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
sobel=Sobel(image);
imshow(sobel);

% --- Executes on button press in pushbuttonprewitt.
function pushbuttonprewitt_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonprewitt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
prewitt=Prewitt(image);
imshow(prewitt);

% --- Executes on button press in pushbuttonlaplace.
function pushbuttonlaplace_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonlaplace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
laplace=Laplace(image);
imshow(laplace);

% --- Executes on button press in pushbuttonroberts.
function pushbuttonroberts_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonroberts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
ro=Roberts(image);
imshow(ro);

% --- Executes on button press in pushbuttonakydet.
function pushbuttonakydet_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonakydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
F = getframe(handles.axesson);
Image = frame2im(F);
imwrite(Image,'Image.jpg')


% --- Executes on button press in pushbuttonlre.
function pushbuttonlre_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonlre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson);
I=double(image);
rl=rle(I);
imshow(rl);


% --- Executes on button press in pushbuttonasinma.
function pushbuttonasinma_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonasinma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
sayi=str2double(get(handles.edityeb,'String'));
if sayi<1
    msgbox('Yapýsal Eleman Boyutu 1den Büyük Olmalý..!', 'Error','error');
else
    axes(handles.axesson)
    B = strel('square',sayi);
    As = Asindirma(im2double(image),getnhood(B));
    imshow(As,[]);
end

% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
sayi=str2double(get(handles.edityeb,'String'));
if sayi<1
    msgbox('Yapýsal Eleman Boyutu 1den Büyük Olmalý..!', 'Error','error');
else
    axes(handles.axesson)
    B = strel('square',sayi);
    Ge = Genisleme(im2double(image),getnhood(B));
    imshow(Ge,[]);
end

% --- Executes on button press in pushbuttonacma.
function pushbuttonacma_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonacma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
sayi=str2double(get(handles.edityeb,'String'));
if sayi<1
    msgbox('Yapýsal Eleman Boyutu 1den Büyük Olmalý..!', 'Error','error');
else
    axes(handles.axesson)
    B = strel('square',sayi);
    Ge = Asindirma(im2double(image),getnhood(B));
    I = Genisleme(im2double(Ge),getnhood(B));
    imshow(I,[]);
end
% --- Executes on button press in pushbuttonkapama.
function pushbuttonkapama_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonkapama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
sayi=str2double(get(handles.edityeb,'String'));
if sayi<1
    msgbox('Yapýsal Eleman Boyutu 1den Büyük Olmalý..!', 'Error','error');
else
    B = strel('square',sayi);
    Ge = Genisleme(im2double(image),getnhood(B));
    I = Asindirma(im2double(Ge),getnhood(B));
    imshow(I,[]);
end

% --- Executes on button press in pushbuttonhuffman.
function pushbuttonhuffman_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonhuffman (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
h=Huffman(image);
boyut = dir('huffman.jpg');
set(handles.textb2,'string',num2str(boyut.bytes));
imshow(h);


% --- Executes on button press in pushbuttondcct.
function pushbuttondcct_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttondcct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
axes(handles.axesson)
dct=DCT(image);
boyut = dir('dct.jpg');
set(handles.textb2,'string',num2str(boyut.bytes));
imshow(dct);

% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edityeb_Callback(hObject, eventdata, handles)
% hObject    handle to edityeb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edityeb as text
%        str2double(get(hObject,'String')) returns contents of edityeb as a double


% --- Executes during object creation, after setting all properties.
function edityeb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edityeb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
