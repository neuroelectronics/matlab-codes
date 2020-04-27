function [f_out]=fil2med(f_in,extention,CH,Rs,CH_N)
%streams data, determines the median of CHs and then subtracts it from
%everyone.
% Inputs:
% f_in:          filename with extention. for example: 'data.lfp'
% extention:     extention of the filtered file. for example: 'fil'
% CH:            slected group of channels
% Rs:            sampling reate
% CH_N:           total number of channels

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
    noise=repmat(median(Data(CH,:)),CH_N,1);
    Data_fill=Data-noise;
    fwrite(fid,int16(reshape(Data_fill,1,Data_size(1)*Data_size(2))'),'int16');  
    clc
    disp(cat(2,'there is ', num2str(f_duration_sec), ' seconds of data per channel'));
    disp(cat(2, num2str(  floor(1000*(stream/Rs)/f_duration_sec)/10   ), ' % is done!'));
end
fclose(fid);