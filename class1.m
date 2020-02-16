function varargout = class1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @class1_OpeningFcn, ...
                   'gui_OutputFcn',  @class1_OutputFcn, ...
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

function class1_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = class1_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function pushbutton1_Callback(hObject, eventdata, handles) 
if get(handles.radiobutton1,'Value') == 1.0
    a=str2double(get(handles.edit1,'String'));
    b=str2double(get(handles.edit2,'String'));
    if(isnan(a) || isnan(b)) %nan=not a number
        errordlg('Please enter numbers','Warning');
        return;
    end
    set(handles.text5,'String',num2str(a+b));
else
    a=str2double(get(handles.edit1,'String'));
    b=str2double(get(handles.edit2,'String'));
    if(isnan(a) || isnan(b))
        errordlg('Please enter numbers','Warning');
        return;
    end
    if((a-round(a) >1e-6) || (b-round(b)>1e-6))
        errordlg('You can only do bitand on integer','Warning');
    else
        set(handles.text5,'String',num2str(bitand(round(a),round(b))));
    end
end

function pushbutton3_Callback(hObject, eventdata, handles) %??
set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.text5,'String','');

function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over radiobutton3.
function radiobutton3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
