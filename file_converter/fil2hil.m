function [f_out]=fil2hil(f_in,extention,Rs,CH_N)
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
fid=fopen(f_out,'w+');


for stream=s_time:duration:f_duration_sec*Rs
    Data=Dat_tracker(f_in,stream,duration,CH_N);
    Data_size=size(Data);
    Data_fill=Data;
    Data_hil=abs(hilbert(Data_fill'))';
    fwrite(fid,int16(reshape(Data_hil,1,Data_size(1)*Data_size(2))'),'int16');  
    clc
    disp(cat(2,'there is ', num2str(f_duration_sec), ' seconds of data per channel'));
    disp(cat(2, num2str(  floor(1000*(stream/Rs)/f_duration_sec)/10   ), ' % is done!'));
end
fclose(fid);