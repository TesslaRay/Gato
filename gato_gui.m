function varargout = gato_gui(varargin)
% GATO_GUI MATLAB code for gato_gui.fig
%      GATO_GUI, by itself, creates a new GATO_GUI or raises the existing
%      singleton*.
%
%      H = GATO_GUI returns the handle to a new GATO_GUI or the handle to
%      the existing singleton*.
%
%      GATO_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GATO_GUI.M with the given input arguments.
%
%      GATO_GUI('Property','Value',...) creates a new GATO_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gato_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gato_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gato_gui

% Last Modified by GUIDE v2.5 02-Jul-2019 01:33:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gato_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gato_gui_OutputFcn, ...
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


% --- Executes just before gato_gui is made visible.
function gato_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no outpu t args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gato_gui (see VARARGIN)

% Choose default command line output for gato_gui
handles.output = hObject;
set(hObject, 'Name', 'Gato');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gato_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gato_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
square(handles,1);
turn = getappdata(gcbf,'turn');
if turn == 1
    decision(handles);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
square(handles,2);
turn = getappdata(gcbf,'turn');
if turn == 1
    decision(handles);
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
square(handles,3);
turn = getappdata(gcbf,'turn');
if turn == 1
    decision(handles);
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
square(handles,4);
turn = getappdata(gcbf,'turn');
if turn == 1
    decision(handles);
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
square(handles,5);
turn = getappdata(gcbf,'turn');
if turn == 1
    decision(handles);
end
    



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
square(handles,6);
turn = getappdata(gcbf,'turn');
if turn == 1
    decision(handles);
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
square(handles,7);
turn = getappdata(gcbf,'turn');
if turn == 1
    decision(handles);
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
square(handles,8);
turn = getappdata(gcbf,'turn');
if turn == 1
    decision(handles);
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
square(handles,9);
turn = getappdata(gcbf,'turn');
if turn == 1
    decision(handles);
end


% --- Executes on button press in newgame.
function newgame_Callback(hObject, eventdata, handles)
% hObject    handle to newgame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
for i = 1:9
    b = strcat('pushbutton',int2str(i));
    pushbutton = findobj(0, 'tag', b);
    set(pushbutton, 'string', '');
end

turn = 1;
setappdata(gcbf,'turn',turn);

Data  = load('RM.mat');
RM = Data.RM;
setappdata(gcbf,'RM',RM);

% tablero = zeros(1,9);
% setappdata(gcbf,'tablero',tablero);

M = zeros(3,3);
setappdata(gcbf,'M',M);

decision(handles);

dispturn = findobj(0, 'tag', 'dispturn');
set(dispturn,'String','Turno de O');


function square(handles,num)
turn = getappdata(gcbf,'turn');
tablero = getappdata(gcbf,'tablero');
M = getappdata(gcbf,'M');

if turn == 1
    decision(handles);  
else
    b = strcat('pushbutton',int2str(num));
    pushbutton = findobj(0, 'tag', b);
    set(pushbutton, 'string', 'O');
    
    dispturn = findobj(0, 'tag', 'dispturn');
    set(dispturn,'String','Turno de X');
    
    [M, error] = ingresar(M,num,2);
    
    turn = 1;   
end

[win] = ganar(M);
if win == 2
    dispturn = findobj(0, 'tag', 'dispturn');
    set(dispturn,'String','O GANA !!!');
    return
end


setappdata(gcbf,'M',M);
setappdata(gcbf,'turn',turn);


function y = ganar(M)
    %Ganador I
    %Filas
    y = 0;
    for i = 1:2
        if     M(1,1) == i & M(1,2) == i & M(1,3) == i
            y = i;
        elseif M(2,1) == i & M(2,2) == i & M(2,3) == i 
            y = i;       
        elseif M(3,1) == i & M(3,2) == i & M(3,3) == i
            y = i;

        %Columnas
        elseif M(1,1) == i & M(2,1) == i & M(3,1) == i
            y = i;       
        elseif M(1,2) == i & M(2,2) == i & M(3,2) == i
            y = i;       
        elseif M(1,3) == i & M(2,3) == i & M(3,3) == i
            y = i;
        
        %Diagonales
        elseif M(1,1) == i & M(2,2) == i & M(3,3) == i
            y = i;
        elseif M(1,3) == i & M(2,2) == i & M(3,1) == i
            y = i;
        end
    end

       
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


% --- Funciones necesarias para el algoritmo
function [M, error] = ingresar(M,a,c)
    for i = 1:3
        for j = 1:3
            if 3*j + i - 3 == a
                if M(j,i) == 1 | M(j,i) == 2
                    error = 1;
                else
                    error = 0;
                    M(j,i) = c;
                end
            end
        end
    end

function res = stateToIndex(M)
    y = 0;
    res = 0;
    for j = 1:3
        for i = 1:3
            y = 3*j + i - 4;
            res = res + M(j,i)*3^y;
        end
    end
    res = res + 1;

function decision(handles)
    pause(0.5);
    RM = getappdata(gcbf,'RM');
    M = getappdata(gcbf,'M');
   
    play = RM(stateToIndex(M),:);

    [buff, a] = max(play);
    [M, error] = ingresar(M,a,1);
    setappdata(gcbf,'M',M);
    
    b = strcat('pushbutton',int2str(a));
    pushbutton = findobj(0, 'tag', b);
    set(pushbutton, 'string', 'X');
    
    [win] = ganar(M);
    if win == 1
        dispturn = findobj(0, 'tag', 'dispturn');
        set(dispturn,'String','X GANA !!!');
        return
    end
    
    dispturn = findobj(0, 'tag', 'dispturn');
    set(dispturn,'String','Turno de O');
            
    turn = 2;
    setappdata(gcbf,'turn',turn);
    

    
