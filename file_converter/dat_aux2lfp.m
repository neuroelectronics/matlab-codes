function dat_aux2lfp(basename,Rs,data_CH,data_CH_N,acc_CH,aux_CH_N)
%streams data, filters it, and writes it into a new file with the same filename and defined extention 
% Inputs:
% f_in:          filename with extention. for example: 'data.lfp'
% extention:     extention of the filtered file. for example: 'fil'
% fc:            filtering frequency. for exmaple: [500] or [.1 1250]
% filter_type:   filtering type. for example: 'high'
% Rs:            sampling reate
% CH_:           total number of channels

%%
%  clc 
%  clear
%  basename='20150529_0um';
%  data_CH_N=160;
%  aux_CH_N=9;

Rs_lfp=1250;
%Rs=2e4;
d_data =    cat(2,basename,'.dat');
d_aux=      cat(2,basename,'.aux');



%%
duration=60*Rs;
s_time=30*Rs;
Data=zeros(2,duration);
%%

fid=fopen(cat(2,basename,'.dat'),'r');
fseek(fid,0,'eof');
f_duration_sec=ftell(fid)./(2*data_CH_N*Rs);
fclose(fid);
disp(cat(2,'there are ', num2str(f_duration_sec), ' seconds of data per channel'));

%%
f_out=cat(2,basename,'.eeg');
fid_out=fopen(f_out,'w+');
for stream=s_time:duration: (f_duration_sec-1)*Rs
    
        Data=Dat_tracker(d_data,stream-1,duration,data_CH_N);
        AUX=   Dat_tracker(d_aux,stream-1,duration,aux_CH_N);

        Data_combo=cat(1,Data(data_CH,:),AUX(acc_CH,:));

        Data_fill=resample(Data_combo',Rs_lfp,Rs)';
        Data_size=size(Data_fill);

        fwrite(fid_out,int16(reshape(Data_fill,1,Data_size(1)*Data_size(2))'),'int16');   
        clc
        disp(cat(2,'there is ', num2str(f_duration_sec), ' seconds of data per channel'));
        disp(cat(2, num2str(stream/Rs), ' s is done!'));
    
end
 fclose(fid_out);