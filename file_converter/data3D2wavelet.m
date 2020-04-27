   function [data_fil, data_hil] = data3D2wavelet(data,Rs, Wn,trial_N,duration,CH_N,resample_factor)
   %% 
   n=3;
    %Wn=[10 15];
    Rs_resmaple=Rs/resample_factor;
    [b,a]=butter(n,2*Wn/Rs_resmaple,'bandpass');
   
    tmp=reshape (data,CH_N,trial_N*duration);
    
    tmp_resamp = resample (tmp',1,resample_factor)';
    
    Data_fil_tmp=filtfilt (b,a,tmp_resamp')';
    Data_hil_tmp=hilbert (Data_fil_tmp')';

    data_fil=reshape(Data_fil_tmp,CH_N,duration/resample_factor,trial_N);
    data_hil=reshape(Data_hil_tmp,CH_N,duration/resample_factor,trial_N);