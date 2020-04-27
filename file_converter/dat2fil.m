function [f_out]=dat2fil(f_in,extention,fc,filter_type,Rs,CH_N)
%streams data, filters it, and writes it into a new file with the same filename and defined extention 
% Inputs:
% f_in:          filename with extention. for example: 'data.lfp'
% extention:     extention of the filtered file. for example: 'fil'
% fc:            filtering frequency. for exmaple: [500] or [.1 1250]
% filter_type:   filtering type. for example: 'high'
% Rs:            sampling reate
% CH_:           total number of channels

%%
duration=20*Rs;
s_time=10*Rs;
fid=fopen(f_in,'r');


fseek(fid,0,'eof');
f_duration_sec=ftell(fid)./(2*CH_N*Rs);
fclose(fid);

disp(cat(2,'there is ', num2str(f_duration_sec), ' seconds of data per channel'));


f_out=cat(2,f_in(1:end-3),extention);
fid=fopen(f_out,'w+');
 
n=3;
Wn=fc;
[b,a]=butter(n,2*Wn/Rs,filter_type);

for stream=s_time:duration:f_duration_sec*Rs
    Data=Dat_tracker(f_in,stream,duration,CH_N);
    Data_size=size(Data);
    Data_fill=filtfilt(b,a,Data')';
    fwrite(fid,int16(reshape(Data_fill,1,Data_size(1)*Data_size(2))'),'int16');  
    clc
    disp(cat(2,'there is ', num2str(f_duration_sec), ' seconds of data per channel'));
    disp(cat(2, num2str(  floor(1000*(stream/Rs)/f_duration_sec)/10   ), ' % is done!'));
end



%% the remeing of the file 
        
remaining_duration= f_duration_sec*Rs - (stream + round(duration/2));
remaining_center=round(remaining_duration/2)+stream + s_time;

if remaining_duration>0
    Data=   Dat_tracker(f_in,remaining_center,remaining_duration,CH_N);
    Data_size=size(Data);
    Data_fill=filtfilt(b,a,Data')';
    fwrite(fid,int16(reshape(Data_fill,1,Data_size(1)*Data_size(2))'),'int16');  

end
          
fclose(fid);

