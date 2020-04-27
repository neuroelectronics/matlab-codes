%function lfp_aux2eeg%(CH,CH_aux,CH_N_aux_N,Rs,Rs_lfp)

 clc
 clear

CH=[49 50 51 52 53 176 177 174 175 172]+1;
CH_aux=[1];
CH_N=256;
aux_N=1;
Rs=2e4;
Rs_lfp=1250;
%%
f_in = dir2(pwd,'-r','*.lfp');
f_in_lfp=f_in.name;
f_in_aux= cat(2, f_in.name(1:end-4),'.DIN');
f_out=cat(2, f_in.name(1:end-4),'.eeg');
fid=fopen(f_out,'w+');

%%
f_duration_sec_lfp=dat_length(f_in_lfp,CH_N,Rs_lfp);
f_duration_sec_aux=dat_length(f_in_aux,aux_N,Rs);

k=0;
duration=60*Rs;
s_time=30*Rs;
%%
for stream=s_time:duration:f_duration_sec_aux*Rs
    
    lfp=   Dat_tracker(f_in_lfp,stream/16-1,duration/16,CH_N);
    aux=   Dat_tracker(f_in_aux,stream-1,duration,aux_N);
    
    Data_lfp=lfp(CH,:);
    Data_aux=aux(CH_aux,1:16:end);

    Data_eeg=cat(1,Data_lfp,Data_aux);
    Data_size_eeg=  size(Data_eeg);

    fwrite(fid,int16(reshape(Data_eeg,1,Data_size_eeg(1)*Data_size_eeg(2))'),'int16');


k=k+1;


end

