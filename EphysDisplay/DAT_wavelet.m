function varargout = DAT_wavelet(varargin)
% DAT_WAVELET MATLAB code for DAT_wavelet.fig
%      DAT_WAVELET, by itself, creates a new DAT_WAVELET or raises the existing
%      singleton*.
%
%      H = DAT_WAVELET returns the handle to a new DAT_WAVELET or the handle to
%      the existing singleton*.
%
%      DAT_WAVELET('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DAT_WAVELET.M with the given input arguments.
%
%      DAT_WAVELET('Property','Value',...) creates a new DAT_WAVELET or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DAT_wavelet_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DAT_wavelet_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DAT_wavelet

% Last Modified by GUIDE v2.5 29-May-2019 16:53:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DAT_wavelet_OpeningFcn, ...
                   'gui_OutputFcn',  @DAT_wavelet_OutputFcn, ...
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


% --- Executes just before DAT_wavelet is made visible.
function DAT_wavelet_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DAT_wavelet (see VARARGIN)

% Choose default command line output for DAT_wavelet
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DAT_wavelet wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DAT_wavelet_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function eCh1_Callback(hObject, eventdata, handles)
% hObject    handle to eCh1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eCh1 as text
%        str2double(get(hObject,'String')) returns contents of eCh1 as a double


% --- Executes during object creation, after setting all properties.
function eCh1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eCh1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eCh2_Callback(hObject, eventdata, handles)
% hObject    handle to eCh2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eCh2 as text
%        str2double(get(hObject,'String')) returns contents of eCh2 as a double


% --- Executes during object creation, after setting all properties.
function eCh2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eCh2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eCh3_Callback(hObject, eventdata, handles)
% hObject    handle to eCh3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eCh3 as text
%        str2double(get(hObject,'String')) returns contents of eCh3 as a double


% --- Executes during object creation, after setting all properties.
function eCh3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eCh3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eCh4_Callback(hObject, eventdata, handles)
% hObject    handle to eCh4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eCh4 as text
%        str2double(get(hObject,'String')) returns contents of eCh4 as a double


% --- Executes during object creation, after setting all properties.
function eCh4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eCh4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbFile.
function pbFile_Callback(hObject, eventdata, handles)
% hObject    handle to pbFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename A
[f,p]=uigetfile({'*.lfp','*.lfp|LFP file';'*.dat','*.dat|Binary data file'},'Select file to open');
filename=[p f];
[p,f,e]=fileparts(f);
if strcmp(e,'.lfp')
    set(handles.eFS,'String','1250');
end
set(handles.tName,'String',filename);

Nch=str2double(get(handles.eNCH,'string'));
Channels=[str2double(get(handles.eCh1,'string')),str2double(get(handles.eCh2,'string')),str2double(get(handles.eCh3,'string')),str2double(get(handles.eCh4,'string'))];
data=readmulti_frank(filename,Nch,unique(Channels),0,inf);
[~,A]=WhitenSignal(data,1250*2000,1,[],1);

function eNCH_Callback(hObject, eventdata, handles)
% hObject    handle to eNCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eNCH as text
%        str2double(get(hObject,'String')) returns contents of eNCH as a double


% --- Executes during object creation, after setting all properties.
function eNCH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eNCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eFL_Callback(hObject, eventdata, handles)
% hObject    handle to eFL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eFL as text
%        str2double(get(hObject,'String')) returns contents of eFL as a double
pushbutton2_Callback(hObject, eventdata, handles);

% --- Executes during object creation, after setting all properties.
function eFL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eFL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eTW_Callback(hObject, eventdata, handles)
% hObject    handle to eTW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eTW as text
%        str2double(get(hObject,'String')) returns contents of eTW as a double
pushbutton2_Callback(hObject, eventdata, handles);

% --- Executes during object creation, after setting all properties.
function eTW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eTW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename evt_tps A Freqlist
if ~isempty(filename)
    Nch=str2double(get(handles.eNCH,'string'));
    Freqlist=str2num(get(handles.eFL,'string'));
    Window=str2num(get(handles.eTW,'string'));
    Fs=str2num(get(handles.eFS,'string'));
    Time=get(handles.eTime,'string');
    Scale=str2double(get(handles.eScale,'string'));
    Scale_single=cell(4,1); 
    for idx=1:4
        eval(['Scale_single{idx}=get(handles.eCh' num2str(idx) 'scale,''string'');']);
    end
    Channels=[str2double(get(handles.eCh1,'string')),str2double(get(handles.eCh2,'string')),str2double(get(handles.eCh3,'string')),str2double(get(handles.eCh4,'string'))];
    if isnan(str2double(Time))
        hh=0;
        mm=0;
        ss=0;
        ms=0;
        locs=[0 strfind(Time,':')];
        loc_ms=strfind(Time,'.');
        if ~isempty(loc_ms)
            ms=str2double(Time(loc_ms+1:end));
            ss=str2double(Time(locs(end)+1:loc_ms-1));
        else
            ss=str2double(Time(locs(end)+1:end));
        end
        mm=str2double(Time(locs(end-1)+1:locs(end)-1));
        hh=str2double(Time(locs(end-2)+1:locs(end-1)-1));
        mm(isnan(mm))=0;
        hh(isnan(hh))=0;
        Time=hh*3600+mm*60+ss+ms/1000;
    else
        Time=str2double(Time);
    end
    %% Data loading
    
    if get(handles.cbMerge,'Value')
        ts=evt_tps+Window(1);
        ts(ts<1)=1;
        ts=round(ts*Fs);
        te=ts+round(Fs*(-Window(1)+Window(2)))-1;
        
        data=arrayfun(@(x,y) readmulti_frank(filename,Nch,Channels,x,y),ts,te,'UniformOutput',0);
        %integraty check
        len_data=cellfun(@(x) size(x,1),data);
        len_correct=len_data==len_data(1);
        data=data(len_correct);
    else
        ts=Time+Window(1);
        ts(ts<1)=1;
        ts=round(ts*Fs);
        te=ts+round(Fs*(-Window(1)+Window(2)))-1;
        data={readmulti_frank(filename,Nch,Channels,(ts),(te))}; %%data_loading
    end
    t=[(Window(1)*Fs:Window(2)*Fs-1)]/Fs;
    span=str2num(get(handles.eSmooth,'String')); %span is the smoothing window in second 
    if(get(handles.checkboxWhiten,'Value'))
        data_wave=cellfun(@(x) Filter0In(A,x),data,'UniformOutput',0); %Apply whitening filter
    else
        data_wave=data;
    end
    %calculation
    for idx=1:length(Channels)
        if get(handles.cbBM,'value')
            Freqlist=1:200;
        end
%         w_mat=ones(length(t),length(Freqlist),length(data));
%         parfor t_idx=1:length(data)
%             w_mat(:,:,t_idx)=abs(awt_freqlist(data{t_idx}(:,idx),Fs,Freqlist,'Gabor'));
%         end
        if get(handles.cbPhase','value')
            w=cellfun(@(x) angle(awt_freqlist(x(:,idx),Fs,Freqlist,'Gabor')),data_wave,'Uniformoutput',0);
        else
            w_func=@(x) log(abs(x));
            w=cellfun(@(x) w_func(awt_freqlist(x(:,idx),Fs,Freqlist,'Gabor')),data_wave,'Uniformoutput',0);
        end
        
%         p=abs(w);
        w_mat=cat(3,w{:});
        p=mean(w_mat,3);
        eval(['axes(handles.axes' num2str(idx) ')']);
        %display wavelet
        if get(handles.cbBM,'value')

            bw=ones(6,size(p,1));
            p_func=@(x) (mean(x,2));
            bw(1,:)=smooth(p_func(p(:,1:3)),span*Fs);
            bw(2,:)=smooth(p_func(p(:,4:8)),span*Fs);
            bw(3,:)=smooth(p_func(p(:,9:12)),span*Fs);
            bw(4,:)=smooth(p_func(p(:,13:30)),span*Fs);
            bw(5,:)=smooth(p_func(p(:,31:80)),span*Fs);
            bw(6,:)=smooth(p_func(p(:,81:200)),span*Fs);
            %         bw=mapminmax(bw,0,1);
%             bw=log(bw);%log-normal adjustion
            h_img=imagesc(t,1:size(bw,1),bw);
            c=caxis;
            caxis(c*Scale);
            scale_this=c*Scale;
            set(gca,'yticklabel',{'Delta','Theta','Alpha','Beta','Gamma','HF'});
            set(gca,'ytick',1:6);
        else
            for idx1=1:size(p,2);
                p(:,idx1)=smooth(p(:,idx1),span*Fs);
            end
            h_img=imagesc(t,1:length(Freqlist),p');
            sel_idx=round(1:length(Freqlist)/10:length(Freqlist));
            set(gca,'Ytick',sel_idx);
            set(gca,'Yticklabel',arrayfun(@num2str,Freqlist(sel_idx),'UniformOutput',0));
            %set scale
            scale_this=str2num(Scale_single{idx}) ;% manual override of current channel scale
            if (isnumeric(scale_this))&&(length(scale_this)==2)
                caxis(scale_this)
            else
                c=caxis;
                caxis(c*Scale);
                scale_this=c*Scale;
            end
            
        end
        
        eval(['set(handles.tCh' num2str(idx) 'scale,''String'',''Scale:[' num2str(scale_this(1)) ' '...
                num2str(scale_this(2)) ']'');']);
            
        set(gca,'ButtondownFcn','DAT_wavelet(''AxesCordinate'')')
        set(h_img,'ButtondownFcn','DAT_wavelet(''AxesCordinate'')')
        axis xy;
    end
    axes(handles.axes5);
    data_LFP=mean(cat(3,data{:}),3);
    
    data_r=range(data_LFP,1);
    offset=zeros(length(data_r),1);
    offset(1)=0.5*data_r(1);
    for idx=2:length(data_r)
        offset(idx)=offset(idx-1)+data_r(idx-1)/2+data_r(idx)/2;
    end
    plot(t,bsxfun(@minus,(data_LFP/1000)',offset/1000));
    axis tight
end



function AxesCordinate()
global Freqlist
[t,f]=ginput(1);
f=round(f);
if(f>length(Freqlist))
    f=length(f);
end
if(f<1)
    f=1;
end
disp(['Time:' num2str(t) 's, Frequency:' num2str(Freqlist(f)) 'Hz']) 

function eTime_Callback(hObject, eventdata, handles)
% hObject    handle to eTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eTime as text
%        str2double(get(hObject,'String')) returns contents of eTime as a double
pushbutton2_Callback(hObject, eventdata, handles);

% --- Executes during object creation, after setting all properties.
function eTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton2.
function pushbutton2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function eFS_Callback(hObject, eventdata, handles)
% hObject    handle to eFS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eFS as text
%        str2double(get(hObject,'String')) returns contents of eFS as a double


% --- Executes during object creation, after setting all properties.
function eFS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eFS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cbBM.
function cbBM_Callback(hObject, eventdata, handles)
% hObject    handle to cbBM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbBM



function eScale_Callback(hObject, eventdata, handles)
% hObject    handle to eScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eScale as text
%        str2double(get(hObject,'String')) returns contents of eScale as a double
set(handles.eCh1scale,'String','');
set(handles.eCh2scale,'String','');
set(handles.eCh3scale,'String','');
set(handles.eCh4scale,'String','');
pushbutton2_Callback(hObject, eventdata, handles);

% --- Executes during object creation, after setting all properties.
function eScale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eSmooth_Callback(hObject, eventdata, handles)
% hObject    handle to eSmooth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eSmooth as text
%        str2double(get(hObject,'String')) returns contents of eSmooth as a double
pushbutton2_Callback(hObject, eventdata, handles);

% --- Executes during object creation, after setting all properties.
function eSmooth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eSmooth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ch_num=str2num(get(handles.eNCH,'String'));
str=arrayfun(@num2str,1:ch_num,'uniformoutput',0);
[s,~] = listdlg('PromptString','Select channels to display',...
    'SelectionMode','multiple',...
    'ListString',str);
chs_selected=s;
for idx=1:length(chs_selected)
    if idx<=4
        eval(['set(handles.eCh' num2str(idx) ',''string'',num2str(chs_selected(idx)));']);
    end
end
pushbutton2_Callback(hObject, eventdata, handles);


% --- Executes on button press in pLoadEvt.
function pLoadEvt_Callback(hObject, eventdata, handles)
% hObject    handle to pLoadEvt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f_evt evt_tps evt_type evt_all evt_types
[f p]=uigetfile({'*.evt','*.evt|Select a event file';'*.clu.*','*.clu.*|Select a clu file'});
[~,~,typ]=fileparts(f);
if strcmp(typ,'.evt')
    evt=LoadEvents([p f]);
    evt_all=evt.time;
    evt_type=evt.description;
    evt_types=unique(evt.description);
    evt_tps=evt.time(arrayfun(@(x) strcmp(x,evt_type(1)),evt_type));
    set(handles.popEvtSel,'String',evt_types);
end

if ~isempty(strfind(f,'.clu.'))
    fs=str2num(get(handles.eFS,'String'));
    clu=importdata([p f]);
    spk_time=importdata([p strrep(f,'.clu.','.res.')]); %first element is the number of clusters
    spk_Nclu=clu(1);
    spk_clu=clu(2:end);
    evt_all=spk_time/fs;
    evt_type=spk_clu;
    evt_types=unique(evt_type);%arrayfun(@num2str,1:spk_Nclu,'UniformOutput',0);
    evt_tps=evt_all(evt_type==evt_types(1));
    set(handles.popEvtSel,'String',evt_types);
end

f_evt=f;
set(handles.tEVT,'String',['EVT file: ' f]);
set(handles.tNEVT,'String',['/' num2str(length(evt_tps))]);
set(handles.eXMLidx,'String',num2str(1));
set(handles.slider1,'Max',length(evt_tps),'Value',1,'SliderStep',[1 1]./(length(evt_tps)-1));

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global evt_tps
n=round(get(handles.slider1,'Value'));
set(handles.eXMLidx,'String',num2str(n));
set(handles.eTime,'String',num2str(evt_tps(n)));
pushbutton2_Callback(hObject, eventdata, handles);
% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function eXMLidx_Callback(hObject, eventdata, handles)
% hObject    handle to eXMLidx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eXMLidx as text
%        str2double(get(hObject,'String')) returns contents of eXMLidx as a double
global evt_tps
max=get(handles.slider1,'max');
n=str2num(get(hObject,'string'));
if n>max
    n=max;
    set(hObject,'String',num2str(n));
end
set(handles.slider1,'value',n)
slider1_Callback(hObject, eventdata, handles)
% pushbutton2_Callback(hObject, eventdata, handles);
% --- Executes during object creation, after setting all properties.
function eXMLidx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eXMLidx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbTplus.
function pbTplus_Callback(hObject, eventdata, handles)
% hObject    handle to pbTplus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tnow=str2num(get(handles.eTime,'String'));
tp=str2num(get(handles.eTW,'String'));
tnow=tnow+tp(1);
set(handles.eTime,'String',num2str(tnow));
pushbutton2_Callback(hObject, eventdata, handles);

% --- Executes on button press in pbTminus.
function pbTminus_Callback(hObject, eventdata, handles)
% hObject    handle to pbTminus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tnow=str2num(get(handles.eTime,'String'));
tp=str2num(get(handles.eTW,'String'));
tnow=tnow+tp(2);
set(handles.eTime,'String',num2str(tnow));
pushbutton2_Callback(hObject, eventdata, handles);



function eCh1scale_Callback(hObject, eventdata, handles)
% hObject    handle to eCh1scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eCh1scale as text
%        str2double(get(hObject,'String')) returns contents of eCh1scale as a double


% --- Executes during object creation, after setting all properties.
function eCh1scale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eCh1scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eCh2scale_Callback(hObject, eventdata, handles)
% hObject    handle to eCh2scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eCh2scale as text
%        str2double(get(hObject,'String')) returns contents of eCh2scale as a double


% --- Executes during object creation, after setting all properties.
function eCh2scale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eCh2scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eCh3scale_Callback(hObject, eventdata, handles)
% hObject    handle to eCh3scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eCh3scale as text
%        str2double(get(hObject,'String')) returns contents of eCh3scale as a double


% --- Executes during object creation, after setting all properties.
function eCh3scale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eCh3scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eCh4scale_Callback(hObject, eventdata, handles)
% hObject    handle to eCh4scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eCh4scale as text
%        str2double(get(hObject,'String')) returns contents of eCh4scale as a double


% --- Executes during object creation, after setting all properties.
function eCh4scale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eCh4scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ginput(1)


% --- Executes on mouse press over axes background.
function axes2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ginput(1)


% --- Executes on mouse press over axes background.
function axes3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ginput(1)


% --- Executes on mouse press over axes background.
function axes4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ginput(1)


% --- Executes on button press in cbMerge.
function cbMerge_Callback(hObject, eventdata, handles)
% hObject    handle to cbMerge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbMerge


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton7.
function pushbutton7_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popEvtSel.
function popEvtSel_Callback(hObject, eventdata, handles)
% hObject    handle to popEvtSel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popEvtSel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popEvtSel
global f_evt evt_tps evt_type evt_all evt_types

[~,~,typ]=fileparts(f_evt);
evt_typesel=get(handles.popEvtSel,'Value');
if strcmp(typ,'.evt')
    evt_tps=evt_all(strcmp(evt_types(evt_typesel),evt_type));
end

if ~isempty(strfind(f_evt,'.clu.'))
    evt_tps=evt_all(evt_type==evt_types(evt_typesel));
end

set(handles.tNEVT,'String',['/' num2str(length(evt_tps))]);
set(handles.eXMLidx,'String',num2str(1));
set(handles.slider1,'Max',length(evt_tps),'Value',1,'SliderStep',[1 1]./(length(evt_tps)-1));

% --- Executes during object creation, after setting all properties.
function popEvtSel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popEvtSel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cbPhase.
function cbPhase_Callback(hObject, eventdata, handles)
% hObject    handle to cbPhase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbPhase


% --- Executes on button press in checkboxWhiten.
function checkboxWhiten_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxWhiten (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxWhiten


%function [y, ARmodel] = WhitenSignal(x, window,CommonAR,ARmodel, ARorder)
% whitens the signal
% if window specified will recompute the model in each window of that size
% (window is in samples,e,g, 300sec*1250 samples
% if CommonAR is set to 1, then will use model from first channel for all
% if ARmodel is specified - use it, not compute fromthe data
% output optionaly the ARmodel for use on the other data to be on the same scale
% seems that phase is shifted by Filter0 - check .. otherwise reprogram to
% filter with filtfilt , instead.
function [y, A] = WhitenSignal(x,window,CommonAR, ARmodel,ArOrder)

%artype =2; %Signal processing toolbox
artype =1; %arfit toolbox, (crushes sometimes with old version and single data type)

% [window,CommonAR, ARmodel,ArOrder] = DefaultArgsIn(varargin,{[],1,[],1});
ArOrder = ArOrder+1;
Trans = 0;
if size(x,1)<size(x,2)
    x = x';
    Transf =1;
end
[nT nCh]  = size(x);
y = zeros(nT,nCh);
if isempty(window)
    seg = [1 nT];
    nwin=1;
else
    nwin = floor(nT/window)+1;
    seg = repmat([1 window],nwin,1)+repmat([0:nwin-1]'*window,1,2);
    if nwin*window>nT
        seg(end,2) =nT;
    end
end

for j=1:nwin
    if ~isempty(ARmodel)
        A = ARmodel;
        for i=1:nCh
            y(seg(j,1):seg(j,2),i) = Filter0In(A, x(seg(j,1):seg(j,2),i));
        end
    else
        if CommonAR % meaning common model for all channels and segments!!!
            for i=1:nCh
                if  j==1 & i==1
                    switch artype
                        case 1
                            [w Atmp] = arfitIn(x(seg(j,1):seg(j,2),i),ArOrder,ArOrder);
                            A = [1 -Atmp];
                        case 2
                            A = arburg(x(seg(j,1):seg(j,2),i),ArOrder);
                    end
                    ARmodel = A;
                end
                y(seg(j,1):seg(j,2),i) = Filter0In(A, x(seg(j,1):seg(j,2),i));
            end
        else
            for i=1:nCh
                switch artype
                    case 1
                        [w Atmp] = arfitIn(x(seg(j,1):seg(j,2),i),ArOrder,ArOrder);
                        A =[1 -Atmp];
                    case 2
                        A = arburg(x(seg(j,1):seg(j,2),i),ArOrder);
                end
                y(seg(j,1):seg(j,2),i) = Filter0In(A, x(seg(j,1):seg(j,2),i));
            end
        end
    end
end

if Trans
    y =y';
end


function varargout = DefaultArgsIn(Args, DefArgs)
% auxillary function to replace argument check in the beginning and def. args assigment
% sets the absent or empty values of the Args (cell array, usually varargin)
% to their default values from the cell array DefArgs.
% Output should contain the actuall names of arguments that you use in the function

% e.g. : in function MyFunction(somearguments , varargin)
% calling [SampleRate, BinSize] = DefaultArgs(varargin, {20000, 20});
% will assign the defualt values to SampleRate and BinSize arguments if they
% are empty or absent in the varargin cell list
% (not passed to a function or passed empty)
if isempty(Args)
    Args ={[]};
end

if iscell(Args{1}) & length(Args)==1
    Args = Args{1};
end

nDefArgs = length(DefArgs);
nInArgs = length(Args);
%out = cell(nDefArgs,1);
if (nargout~=nDefArgs)
    error('number of defaults is different from assigned');
    keyboard
end
for i=1:nDefArgs
    
    if (i>nInArgs | isempty(Args{i}))
        varargout(i) = {DefArgs{i}};
    else
        varargout(i) = {Args{i}};
    end
end


function [w, A, C, sbc, fpe, th]=arfitIn(v, pmin, pmax, selector, no_const)
%ARFIT	Stepwise least squares estimation of multivariate AR model.
%
%  [w,A,C,SBC,FPE,th]=ARFIT(v,pmin,pmax) produces estimates of the
%  parameters of a multivariate AR model of order p,
%
%      v(k,:)' = w' + A1*v(k-1,:)' +...+ Ap*v(k-p,:)' + noise(C),
%
%  where p lies between pmin and pmax and is chosen as the optimizer
%  of Schwarz's Bayesian Criterion. The input matrix v must contain
%  the time series data, with columns of v representing variables
%  and rows of v representing observations.  ARFIT returns least
%  squares estimates of the intercept vector w, of the coefficient
%  matrices A1,...,Ap (as A=[A1 ... Ap]), and of the noise covariance
%  matrix C.
%
%  As order selection criteria, ARFIT computes approximations to
%  Schwarz's Bayesian Criterion and to the logarithm of Akaike's Final
%  Prediction Error. The order selection criteria for models of order
%  pmin:pmax are returned as the vectors SBC and FPE.
%
%  The matrix th contains information needed for the computation of
%  confidence intervals. ARMODE and ARCONF require th as input
%  arguments.
%
%  If the optional argument SELECTOR is included in the function call,
%  as in ARFIT(v,pmin,pmax,SELECTOR), SELECTOR is used as the order
%  selection criterion in determining the optimum model order. The
%  three letter string SELECTOR must have one of the two values 'sbc'
%  or 'fpe'. (By default, Schwarz's criterion SBC is used.) If the
%  bounds pmin and pmax coincide, the order of the estimated model
%  is p=pmin=pmax.
%
%  If the function call contains the optional argument 'zero' as the
%  fourth or fifth argument, a model of the form
%
%         v(k,:)' = A1*v(k-1,:)' +...+ Ap*v(k-p,:)' + noise(C)
%
%  is fitted to the time series data. That is, the intercept vector w
%  is taken to be zero, which amounts to assuming that the AR(p)
%  process has zero mean.

%  Modified 14-Oct-00
%  Authors: Tapio Schneider
%           tapio@gps.caltech.edu
%
%           Arnold Neumaier
%           neum@cma.univie.ac.at

% n: number of observations; m: dimension of state vectors
[n,m]   = size(v);

if (pmin ~= round(pmin) | pmax ~= round(pmax))
    error('Order must be integer.');
end
if (pmax < pmin)
    error('PMAX must be greater than or equal to PMIN.')
end

% set defaults and check for optional arguments
if (nargin == 3)              % no optional arguments => set default values
    mcor       = 1;               % fit intercept vector
    selector   = 'sbc';	          % use SBC as order selection criterion
elseif (nargin == 4)          % one optional argument
    if strcmp(selector, 'zero')
        mcor     = 0;               % no intercept vector to be fitted
        selector = 'sbc';	          % default order selection
    else
        mcor     = 1; 		  % fit intercept vector
    end
elseif (nargin == 5)          % two optional arguments
    if strcmp(no_const, 'zero')
        mcor     = 0;               % no intercept vector to be fitted
    else
        error(['Bad argument. Usage: ', ...
            '[w,A,C,SBC,FPE,th]=AR(v,pmin,pmax,SELECTOR,''zero'')'])
    end
end

ne  	= n-pmax;               % number of block equations of size m
npmax	= m*pmax+mcor;          % maximum number of parameter vectors of length m

if (ne <= npmax)
    error('Time series too short.')
end

% compute QR factorization for model of order pmax
[R, scale]   = arqrIn(v, pmax, mcor);

% compute approximate order selection criteria for models
% of order pmin:pmax
[sbc, fpe]   = arordIn(R, m, mcor, ne, pmin, pmax);

% get index iopt of order that minimizes the order selection
% criterion specified by the variable selector
[val, iopt]  = min(eval(selector));

% select order of model
popt         = pmin + iopt-1; % estimated optimum order
np           = m*popt + mcor; % number of parameter vectors of length m

% decompose R for the optimal model order popt according to
%
%   | R11  R12 |
% R=|          |
%   | 0    R22 |
%
R11   = R(1:np, 1:np);
R12   = R(1:np, npmax+1:npmax+m);
R22   = R(np+1:npmax+m, npmax+1:npmax+m);

% get augmented parameter matrix Aaug=[w A] if mcor=1 and Aaug=A if mcor=0
if (np > 0)
    if (mcor == 1)
        % improve condition of R11 by re-scaling first column
        con 	= max(scale(2:npmax+m)) / scale(1);
        R11(:,1)	= R11(:,1)*con;
    end;
    Aaug = (R11\R12)';
    
    %  return coefficient matrix A and intercept vector w separately
    if (mcor == 1)
        % intercept vector w is first column of Aaug, rest of Aaug is
        % coefficient matrix A
        w = Aaug(:,1)*con;        % undo condition-improving scaling
        A = Aaug(:,2:np);
    else
        % return an intercept vector of zeros
        w = zeros(m,1);
        A = Aaug;
    end
else
    % no parameters have been estimated
    % => return only covariance matrix estimate and order selection
    % criteria for ``zeroth order model''
    w   = zeros(m,1);
    A   = [];
end

% return covariance matrix
dof   = ne-np;                % number of block degrees of freedom
C     = R22'*R22./dof;        % bias-corrected estimate of covariance matrix

% for later computation of confidence intervals return in th:
% (i)  the inverse of U=R11'*R11, which appears in the asymptotic
%      covariance matrix of the least squares estimator
% (ii) the number of degrees of freedom of the residual covariance matrix
invR11 = inv(R11);
if (mcor == 1)
    % undo condition improving scaling
    invR11(1, :) = invR11(1, :) * con;
end
Uinv   = invR11*invR11';
th     = [dof zeros(1,size(Uinv,2)-1); Uinv];



function [R, scale]=arqrIn(v, p, mcor)
%ARQR	QR factorization for least squares estimation of AR model.
%
%  [R, SCALE]=ARQR(v,p,mcor) computes the QR factorization needed in
%  the least squares estimation of parameters of an AR(p) model. If
%  the input flag mcor equals one, a vector of intercept terms is
%  being fitted. If mcor equals zero, the process v is assumed to have
%  mean zero. The output argument R is the upper triangular matrix
%  appearing in the QR factorization of the AR model, and SCALE is a
%  vector of scaling factors used to regularize the QR factorization.
%
%  ARQR is called by ARFIT. 
%
%  See also ARFIT.

%  Modified 29-Dec-99
%  Author: Tapio Schneider
%          tapio@gps.caltech.edu

  % n: number of time steps; m: dimension of state vectors
  [n,m] = size(v);     

  ne    = n-p;                  % number of block equations of size m
  np    = m*p+mcor;             % number of parameter vectors of size m

  % If the intercept vector w is to be fitted, least squares (LS)
  % estimation proceeds by solving the normal equations for the linear
  % regression model
  %
  %                  v(k,:)' = Aaug*u(k,:)' + noise(C)
  %
  % with Aaug=[w A] and `predictors' 
  %
  %              u(k,:) = [1 v(k-1,:) ...  v(k-p,:)]. 
  %
  % If the process mean is taken to be zero, the augmented coefficient
  % matrix is Aaug=A, and the regression model
  %
  %                u(k,:) = [v(k-1,:) ...  v(k-p,:)]
  %
  % is fitted. 
  % The number np is the dimension of the `predictors' u(k). 

  % Assemble the data matrix K (of which a QR factorization will be computed)
  K = zeros(ne,np+m);                 % initialize K
  if (mcor == 1)
    % first column of K consists of ones for estimation of intercept vector w
    K(:,1) = ones(ne,1);
  end
  
  % Assemble `predictors' u in K 
  for j=1:p
    K(:, mcor+m*(j-1)+1:mcor+m*j) = [v(p-j+1:n-j, :)];
  end
  % Add `observations' v (left hand side of regression model) to K
  K(:,np+1:np+m) = [v(p+1:n, :)];
  
  % Compute regularized QR factorization of K: The regularization
  % parameter delta is chosen according to Higham's (1996) Theorem
  % 10.7 on the stability of a Cholesky factorization. Replace the
  % regularization parameter delta below by a parameter that depends
  % on the observational error if the observational error dominates
  % the rounding error (cf. Neumaier, A. and T. Schneider, 2001:
  % "Estimation of parameters and eigenmodes of multivariate
  % autoregressive models", ACM Trans. Math. Softw., 27, 27--57.).
  q     = np + m;             % number of columns of K
  delta = (q^2 + q + 1)*eps;  % Higham's choice for a Cholesky factorization
  scale = sqrt(delta)*sqrt(sum(K.^2));   
  R     = triu(qr([K; diag(scale)]));


function [sbc, fpe, logdp, np] = arordIn(R, m, mcor, ne, pmin, pmax)
%ARORD	Evaluates criteria for selecting the order of an AR model.
%
%  [SBC,FPE]=ARORD(R,m,mcor,ne,pmin,pmax) returns approximate values
%  of the order selection criteria SBC and FPE for models of order
%  pmin:pmax. The input matrix R is the upper triangular factor in the
%  QR factorization of the AR model; m is the dimension of the state
%  vectors; the flag mcor indicates whether or not an intercept vector
%  is being fitted; and ne is the number of block equations of size m
%  used in the estimation. The returned values of the order selection
%  criteria are approximate in that in evaluating a selection
%  criterion for an AR model of order p < pmax, pmax-p initial values
%  of the given time series are ignored.
%
%  ARORD is called by ARFIT. 
%	
%  See also ARFIT, ARQR.

%  For testing purposes, ARORD also returns the vectors logdp and np,
%  containing the logarithms of the determinants of the (scaled)
%  covariance matrix estimates and the number of parameter vectors at
%  each order pmin:pmax.

%  Modified 17-Dec-99
%  Author: Tapio Schneider
%          tapio@gps.caltech.edu
  
  imax 	  = pmax-pmin+1;        % maximum index of output vectors
  
  % initialize output vectors
  sbc     = zeros(1, imax);     % Schwarz's Bayesian Criterion
  fpe     = zeros(1, imax);     % log of Akaike's Final Prediction Error
  logdp   = zeros(1, imax);     % determinant of (scaled) covariance matrix
  np      = zeros(1, imax);     % number of parameter vectors of length m
  np(imax)= m*pmax+mcor;

  % Get lower right triangle R22 of R: 
  %
  %   | R11  R12 |
  % R=|          |
  %   | 0    R22 |
  %
  R22     = R(np(imax)+1 : np(imax)+m, np(imax)+1 : np(imax)+m);

  % From R22, get inverse of residual cross-product matrix for model
  % of order pmax
  invR22  = inv(R22);
  Mp      = invR22*invR22';
  
  % For order selection, get determinant of residual cross-product matrix
  %       logdp = log det(residual cross-product matrix)
  logdp(imax) = 2.*log(abs(prod(diag(R22))));

  % Compute approximate order selection criteria for models of 
  % order pmin:pmax
  i = imax;
  for p = pmax:-1:pmin
    np(i)      = m*p + mcor;	% number of parameter vectors of length m
   if p < pmax
      % Downdate determinant of residual cross-product matrix
      % Rp: Part of R to be added to Cholesky factor of covariance matrix
      Rp       = R(np(i)+1:np(i)+m, np(imax)+1:np(imax)+m);

      % Get Mp, the downdated inverse of the residual cross-product
      % matrix, using the Woodbury formula
      L        = chol(eye(m) + Rp*Mp*Rp')';
      N        = L \ Rp*Mp;
      Mp       = Mp - N'*N;

      % Get downdated logarithm of determinant
      logdp(i) = logdp(i+1) + 2.* log(abs(prod(diag(L))));
   end

   % Schwarz's Bayesian Criterion
   sbc(i) = logdp(i)/m - log(ne) * (ne-np(i))/ne;

   % logarithm of Akaike's Final Prediction Error
   fpe(i) = logdp(i)/m - log(ne*(ne-np(i))/(ne+np(i)));

   % Modified Schwarz criterion (MSC):
   % msc(i) = logdp(i)/m - (log(ne) - 2.5) * (1 - 2.5*np(i)/(ne-np(i)));

   i      = i-1;                % go to next lower order
  end




% y = Filter0(b, x)
%
% filters x with a fir filter so it has zero phase, i.e. shifts the
% filtered signal to the right half of the length of b.
%
% for now it zero pads the original signal
% later it might also do reflecton boundary conditions.
%
% be careful about the order of b!
% for even filters it is not exact  (change of Anton)
% - tired that even filterss dont' work


function y = Filter0In(b, x)

if size(x,1) == 1
	x = x(:);
end

% if mod(length(b),2)~=1
% 	error('filter order should be odd');
% end
if mod(length(b),2)~=1
    shift = length(b)/2;
else
    shift = (length(b)-1)/2;
end

[y0 z] = filter(b,1,single(x));

y = [y0(shift+1:end,:) ; z(1:shift,:)];

