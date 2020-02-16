function varargout = CalculatorCat(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CalculatorCat_OpeningFcn, ...
                   'gui_OutputFcn',  @CalculatorCat_OutputFcn, ...
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


function CalculatorCat_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
set(handles.uitable1,'data',{});


function varargout = CalculatorCat_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


function text_num1_Callback(hObject, eventdata, handles)


function text_num1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function text_num2_Callback(hObject, eventdata, handles)


function text_num2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function text_answer_Callback(hObject, eventdata, handles)


function text_answer_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function button0_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','0');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'0'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','0');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'0'));
    end
end


function button1_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','1');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'1'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','1');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'1'));
    end
end


function button2_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','2');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'2'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','2');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'2'));
    end
end


function button3_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','3');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'3'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','3');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'3'));
    end
end


function button4_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','4');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'4'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','4');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'4'));
    end
end


function button5_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','5');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'5'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','5');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'5'));
    end
end


function button6_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','6');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'6'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','6');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'6'));
    end
end


function button7_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','7');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'7'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','7');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'7'));
    end
end


function button8_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','8');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'8'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','8');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'8'));
    end
end


function button9_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    if (get(handles.text_num1,'String')=='0')
        set(handles.text_num1,'String','9');
    else
        set(handles.text_num1,'String',strcat(get(handles.text_num1,'String'),'9'));
    end
else
    if (get(handles.text_num2,'String')=='0')
        set(handles.text_num2,'String','9');
    else
        set(handles.text_num2,'String',strcat(get(handles.text_num2,'String'),'9'));
    end
end


function buttondot_Callback(hObject, eventdata, handles)
global editing;
if(editing==1)
    temp=get(handles.text_num1,'String');
    if find(temp=='.')>0
        ;
    else
        temp=strcat(temp,'.');
        set(handles.text_num1,'String',temp);
    end
else
    temp=get(handles.text_num2,'String');
    if find(temp=='.')>0
        ;
    else
        temp=strcat(temp,'.');
        set(handles.text_num2,'String',temp);
    end
end


function buttonplus_Callback(hObject, eventdata, handles)
set(handles.text_operator,'String','+');


function buttonand_Callback(hObject, eventdata, handles)
set(handles.text_operator,'String','&');


function buttonclear_Callback(hObject, eventdata, handles)
set(handles.text_operator,'String','');
set(handles.text_num1,'String','');
set(handles.text_num2,'String','');
set(handles.text_answer,'String','');


function buttonequal_Callback(hObject, eventdata, handles)
if get(handles.text_operator,'String') == '+'
    a=str2double(get(handles.text_num1,'String'));
    b=str2double(get(handles.text_num2,'String'));
    if(isnan(a) || isnan(b)) %nan=not a number
        errordlg('Please enter numbers','Warning');
        return;
    end
    set(handles.text_answer,'String',num2str(a+b));
elseif get(handles.text_operator,'String') == '&'
    a=str2double(get(handles.text_num1,'String'));
    b=str2double(get(handles.text_num2,'String'));
    if(isnan(a) || isnan(b))
        errordlg('Please enter numbers','Warning');
        return;
    end
    if((a-round(a) >1e-6) || (b-round(b)>1e-6))
        errordlg('You can only do bitand on integer','Warning');
    else
        set(handles.text_answer,'String',num2str(bitand(round(a),round(b))));
    end
else
    errordlg('Please choose operator','Warning');
end
if (get(handles.text_operator,'String') == '&') | (get(handles.text_operator,'String') == '+')
    global content1;
    content1 = a;
    global content2;
    content2 = b;
    global content3;
    if(get(handles.text_operator,'string')=='+')
        content3=10;
    else
        content3=2;
    end
    global content4;
    content4 = str2double(get(handles.text_answer,'string'));
end


function text_num1_ButtonDownFcn(hObject, eventdata, handles)
global editing
editing = 1;
set(handles.text_num1,'enable','on');
set(handles.text_num2,'enable','off');
uicontrol(handles.text_num1);
set(handles.text_num2,'enable','inactive');


function text_num2_ButtonDownFcn(hObject, eventdata, handles)
global editing
editing = 2;
set(handles.text_num2,'enable','on');
set(handles.text_num1,'enable','off');
uicontrol(handles.text_num2);
set(handles.text_num1,'enable','inactive');


function button_add_Callback(hObject, eventdata, handles)
global content1;
global content2;
global content3;
global content4;
if(isnan(content1)) 
    return;
end
  
olddata = get(handles.uitable1,'data');
newrow = {content1 content2 content3 content4};
newdata = [olddata;newrow];
set(handles.uitable1,'data',newdata);
content1=NaN;


function button_allclear_Callback(hObject, eventdata, handles)
set(handles.uitable1,'data',{});


function button_plot_Callback(hObject, eventdata, handles)
tabledata = get(handles.uitable1,'data');
len=size(tabledata,1);
x=[1:len];
for i=1:len
    y1(i)=tabledata{i};
end
for i=len+1:len*2
    y2(i-len)=tabledata{i};
end
for i=len*3+1:len*4
    y3(i-len*3)=tabledata{i};
end
figure;
plot(x,y1);
hold on;
plot(x,y2);
plot(x,y3);
legend('Input1','Input2','Result');
title('Data Comparison');
grid on;
