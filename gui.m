function varargout = gui(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end



function gui_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


a=imread('min.bmp');

axes(handles.axes34);
imshow(a);

axes(handles.axes35);
imshow(a);

axes(handles.axes36);
imshow(a);

axes(handles.axes37);
imshow(a);

axes(handles.axes38);
imshow(a);

axes(handles.axes39);
imshow(a);

axes(handles.axes40);
imshow(a);

axes(handles.axes41);
imshow(a);

axes(handles.axes42);
imshow(a);

axes(handles.axes43);
imshow(a);

axes(handles.axes44);
imshow(a);

axes(handles.axes45);
imshow(a);

axes(handles.axes46);
imshow(a);

axes(handles.axes47);
imshow(a);

axes(handles.axes48);
imshow(a);

axes(handles.axes49);
imshow(a);

axes(handles.axes50);
imshow(a);

axes(handles.axes51); 
imshow(a);

axes(handles.axes52);
imshow(a);

axes(handles.axes53);
imshow(a);

axes(handles.axes54);
imshow(a);

axes(handles.axes55);
imshow(a);

axes(handles.axes56);
imshow(a);

axes(handles.axes57);
imshow(a);

axes(handles.axes58);
imshow(a);

axes(handles.axes59);
imshow(a);

axes(handles.axes60);
imshow(a);

axes(handles.axes61);
imshow(a);

axes(handles.axes62);
imshow(a);

axes(handles.axes63);
imshow(a);


b=imread('max.bmp');
axes(handles.one);
imshow(b);

guidata(hObject, handles);


function varargout = gui_OutputFcn(hObject, eventdata, handles)

varargout{1} = handles.output;


function Load_Database_Callback(hObject, eventdata, handles)

a=exist('database.txt');

if a>0
    msgbox('Database Already Loaded,Contains 70 Images');
else
fid = fopen('database.txt', 'w+');
for i=1:70
    a=num2str(i);
    b='.jpg';
    c1='.bmp';
    filename=strcat(a,c1);
    fprintf(fid,'%s\r',filename);
end
fclose(fid);
helpdlg('Database succesfully loaded...');
end

function Browse_Callback(hObject, eventdata, handles)


        [filename, pathname] = uigetfile('*.bmp', 'Pick an Image');
        
        if isequal(filename,0) | isequal(pathname,0)
        
        warndlg('Image is not selected');

        
        else
        a=imread(filename);
        handles.queryx=a;
        axes(handles.one);
        imshow(a);
        handles.filename=filename;
        
        guidata(hObject, handles);  
        
        end
 


function Search_Callback(hObject, eventdata, handles)


filename=handles.filename;
[X1] = imread(filename);
HSVmap1 = rgb2hsv(X1);


fid = fopen('database.txt');
resultValues = [];      
resultNames = {};
i = 1;                  
j = 1;

while 1
    imagename = fgetl(fid);
    if ~ischar(imagename), break, end       

     [X] = imread(imagename);
     HSVmap = rgb2hsv(X);
  
    [D1,D2,D3] = quadratic1(X1,  HSVmap1, X, HSVmap);
     resultValues1(i) = D1;
     resultValues2(i) = D2;
     resultValues3(i) = D3;
     resultNames(j) = {imagename};
     i = i + 1;
     j = j + 1;
end

fclose(fid);




[sortedValues1, index1] = sort(resultValues1);     
[sortedValues2, index2] = sort(resultValues2); 
[sortedValues3, index3] = sort(resultValues3); 


for i = 1:10                                        

    tempstr = char(resultNames(index1(i)));

        if i==1;
        x=imread(tempstr);
        axes(handles.axes34);
        imshow(x);
        end

        if i==2
        x=imread(tempstr);
        axes(handles.axes35);
        imshow(x);
        end

        if i==3
        x=imread(tempstr);
        axes(handles.axes36);
        imshow(x);
        end

        if i==4
        x=imread(tempstr);
        axes(handles.axes37);
        imshow(x);
        end

        if i==5
        x=imread(tempstr);
        axes(handles.axes38);
        imshow(x);
        end

        if i==6
        x=imread(tempstr);
        axes(handles.axes39);
        imshow(x);
        end

        if i==7
        x=imread(tempstr);
        axes(handles.axes40);
        imshow(x);
        end

        if i==8
        x=imread(tempstr);
        axes(handles.axes41);
        imshow(x);
        end

        if i==9
        x=imread(tempstr);
        axes(handles.axes42);
        imshow(x);
        end

        if i==10
        x=imread(tempstr);
        axes(handles.axes43);
        imshow(x);
        end

end






for i = 1:10                                       
    tempstr = char(resultNames(index2(i)));
        if i==1;
        x=imread(tempstr);
        axes(handles.axes44);
        imshow(x);
        end

        if i==2
        x=imread(tempstr);
        axes(handles.axes45);

        imshow(x);
        end

        if i==3
        x=imread(tempstr);
        axes(handles.axes46);
        imshow(x);
        end
        if i==4
        x=imread(tempstr);
        axes(handles.axes47);
        imshow(x);
        end

        if i==5
        x=imread(tempstr);
        axes(handles.axes48);
        imshow(x);
        end
        if i==6
        x=imread(tempstr);
        axes(handles.axes49);
        imshow(x);
        end
        if i==7
        x=imread(tempstr);
        axes(handles.axes50);
        imshow(x);
        end
        if i==8
        x=imread(tempstr);
        axes(handles.axes51);
        imshow(x);
        end
        if i==9
        x=imread(tempstr);
        axes(handles.axes52);
        imshow(x);
        end

        if i==10
        x=imread(tempstr);
        axes(handles.axes53);
        imshow(x);
        end

end

for i = 1:10                                       
    tempstr = char(resultNames(index3(i)));
        if i==1;
        x=imread(tempstr);
        axes(handles.axes54);
        imshow(x);
        end

        if i==2
        x=imread(tempstr);
        axes(handles.axes55);

        imshow(x);
        end

        if i==3
        x=imread(tempstr);
        axes(handles.axes56);
        imshow(x);
        end

        if i==4
        x=imread(tempstr);
        axes(handles.axes57);
        imshow(x);
        end

        if i==5
        x=imread(tempstr);
        axes(handles.axes58);
        imshow(x);
        end

        if i==6
        x=imread(tempstr);
        axes(handles.axes59);
        imshow(x);
        end

        if i==7
        x=imread(tempstr);
        axes(handles.axes60);
        imshow(x);
        end

        if i==8
        x=imread(tempstr);
        axes(handles.axes61);
        imshow(x);
        end

        if i==9
        x=imread(tempstr);
        axes(handles.axes62);
        imshow(x);
        end

        if i==10
        x=imread(tempstr);
        axes(handles.axes63);
        imshow(x);
        end
    
end




function clear_Callback(hObject, eventdata, handles)

a=imread('min.bmp');

axes(handles.axes34);
imshow(a);

axes(handles.axes35);
imshow(a);

axes(handles.axes36);
imshow(a);

axes(handles.axes37);
imshow(a);

axes(handles.axes38);
imshow(a);

axes(handles.axes39);
imshow(a);

axes(handles.axes40);
imshow(a);

axes(handles.axes41);
imshow(a);

axes(handles.axes42);
imshow(a);

axes(handles.axes43);
imshow(a);

axes(handles.axes44);
imshow(a);

axes(handles.axes45);
imshow(a);

axes(handles.axes46);
imshow(a);

axes(handles.axes47);
imshow(a);

axes(handles.axes48);
imshow(a);

axes(handles.axes49);
imshow(a);

axes(handles.axes50);
imshow(a);

axes(handles.axes51);
imshow(a);

axes(handles.axes52);
imshow(a);

axes(handles.axes53);
imshow(a);

axes(handles.axes54);
imshow(a);

axes(handles.axes55);
imshow(a);

axes(handles.axes56);
imshow(a);

axes(handles.axes57);
imshow(a);

axes(handles.axes58);
imshow(a);

axes(handles.axes59);
imshow(a);

axes(handles.axes60);
imshow(a);

axes(handles.axes61);
imshow(a);

axes(handles.axes62);
imshow(a);

axes(handles.axes63);
imshow(a);


b=imread('max.bmp');
axes(handles.one);
imshow(b);

delete database.txt;

warndlg('database deleted successfully');

function BACK_Callback(hObject, eventdata, handles)


