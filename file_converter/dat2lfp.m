function [f_out]=dat2lfp(f_in,extention,Rs,Rs_new,CH_N)
%streams data, filters it, and writes it into a new file with the same filename and defined extention 
% Inputs:
% f_in:          filename with extention. for example: 'data.lfp'
% extention:     extention of the filtered file. for example: 'fil'
% fc:            filtering frequency. for exmaple: [500] or [.1 1250]
% filter_type:   filtering type. for example: 'high'
% Rs:            sampling reate
% CH_:           total number of channels

%%
duration=60*Rs;
s_time=30*Rs;
fid=fopen(f_in,'r');


fseek(fid,0,'eof');
f_duration_sec=ftell(fid)./(2*CH_N*Rs);
fclose(fid);

disp(cat(2,'there is ', num2str(f_duration_sec), ' seconds of data per channel'));


f_out=cat(2,f_in(1:end-3),extention);
fid_lfp=fopen(f_out,'w+');
 

for stream=s_time:duration:(f_duration_sec)*Rs
    Data_org=Dat_tracker(f_in,stream,duration,CH_N);
    Data=resample(Data_org',Rs_new,Rs)';
    Data_size=size(Data);
    Data_fill=Data;
    fwrite(fid_lfp,int16(reshape(Data_fill,1,Data_size(1)*Data_size(2))'),'int16');   
    clc
    disp(cat(2,'there is ', num2str(f_duration_sec), ' seconds of data per channel'));
    disp(cat(2, num2str(  floor(1000*(stream/Rs)/f_duration_sec)/10   ), ' % is done!'));
    
end


       %% the remeing of the file 
        
remaining_duration= f_duration_sec*Rs - (stream + round(duration/2));
remaining_center=round(remaining_duration/2)+stream + s_time;

if remaining_duration>0
    Data_dat=   Dat_tracker(f_in,remaining_center,remaining_duration,CH_N);
    Data_lfp=   resample(Data_dat',1250,Rs)';
   
    Data_size_dat=  size(Data_dat);
    Data_size_lfp=  size(Data_lfp);
%    Data_size_aux=  size(Data_aux);

%    if ~isempty(d_DIN); 
 %       Data_size_DIN=  size(Data_DIN);
%    end


    %if length(f_in) >1
        %fwrite(fid,int16(reshape(Data_lfp,1,Data_size_dat(1)*Data_size_dat(2))'),'int16');
%        fwrite(fid_aux,int16(reshape(Data_aux,1,Data_size_aux(1)*Data_size_aux(2))'),'int16');
%        if ~isempty(d_DIN);  
%            fwrite(fid_DIN,int16(reshape(Data_DIN,1,Data_size_DIN(1)*Data_size_DIN(2))'),'int16');
%        end
    %end
        fwrite(fid_lfp,int16(reshape(Data_lfp,1,Data_size_lfp(1)*Data_size_lfp(2))'),'int16');


end
          
fclose(fid);

