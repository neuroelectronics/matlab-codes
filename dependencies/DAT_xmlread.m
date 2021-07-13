function [Nch,fs,Nsamples,ch_sel,good_ch,time_bin,prev_range,offsets]=DAT_xmlread(f_base)
% read DAT xml for neurosuite
% input: filename for .dat file
% create by Zifang Zhao 2018.5
[p,f,e]=fileparts(f_base);
%% read xml param
loc_dot=strfind(f_base,'.');
f_xml=[f_base(1:loc_dot(end)) 'xml'];

ff=dir(f_xml);
time_bin=[];
prev_range=[];
if isempty(ff)
    Nch=[];
    fs=[];
    Nsamples=[];
    ch_sel=[];
    good_ch=[];
    
else
    t_xml=fileread(f_xml);
    Nch_str=regexpi(t_xml,'(?<=<nChannels>)\d+(?=<)','match');
    Nch=str2num(Nch_str{1});
    fileinfo = dir([f_base]);
    fb=fileinfo(1).bytes;
    Nsamples=floor(fb/2/Nch);
    
    fs_str=regexpi(t_xml,'(?<=<samplingRate>)\d+(?=<)','match');
    fs=str2num(fs_str{1});
    
    good_ch=sort(cellfun(@str2num,(regexpi(t_xml,'(?<=<channel skip="0">)\d+(?=<)','match'))))+1;
    
    if strcmp(e,'.lfp')
        fs=1250;
    end
    
    if nargout>3
        f_ch=[f_base(1:end-4) '_chsel.mat'];
        fc=dir(f_ch);
        if isempty(fc)
            ch_sel=[];
        else
            load(f_ch);
        end
    end
    if nargout>5
        f_tp=[f_base(1:end-4) '_timeselect.mat'];
        fc=dir(f_tp);
        if isempty(fc)
            time_bin=[];
%             uiopen('*_timeselect.mat');
        else
            load(f_tp);
        end
    end
    
    if nargout>6
        f_nrs=[f_base(1:end-4) '.nrs'];
        fc=dir(f_nrs);
        if isempty(fc)
            prev_range=[];
            %             uiopen('*_timeselect.mat');
        else
            t_nrs=fileread(f_nrs);
            Tstart_str=regexpi(t_nrs,'(?<=<startTime>)\d+(?=<)','match');
            Tstart=str2num(Tstart_str{1});
            Duration_str=regexpi(t_nrs,'(?<=<startTime>)\d+(?=<)','match');
            Tduration=str2num(Duration_str{1});
            prev_range=[Tstart,Tstart+Tduration];
            
            T_offsets=regexpi(t_nrs,'(?<=<offset>)-?\d+(?=<)','match');
            offsets=cellfun(@str2num,T_offsets);
        end
       
    end
end