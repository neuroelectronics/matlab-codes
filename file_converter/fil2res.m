%% function [spk ]=fil2res(f_in,CH_res,CH_group, CH_N,Rs)

%%
clc
close all
clear 
f_in='20170711_450um_exp_170711_095948.fil';
CH_N =  xml2CH_N(cat(2,f_in(1:end-4),'.xml'));
CH=28;
Rs=2e4;

%
 CH_group=[96 90 101 89 76 119 56]+1;
CH_res=CH;
% CH_N=170;
% Rs=2e4;

duration=30*Rs;
s_time=15*Rs;
fid=fopen(f_in,'r');

fseek(fid,0,'eof');
f_duration_sec=ftell(fid)./(2*CH_N*Rs);
fclose(fid);

disp(cat(2,'there is ', num2str(f_duration_sec), ' seconds of data per channel',' CH_N= ',num2str(CH_N)));
 
n=3;
Wn=50;
[b,a]=butter(n,2*Wn/Rs,'low');
%%
spk=[];
for stream=s_time:duration:f_duration_sec*Rs
    
    Data=Dat_tracker(f_in,stream,duration,CH_N);
    Data_size=size(Data);
    fil_avg=mean(abs(hilbert(Data(CH_group,:))'),2);
    fil_avg_low=filtfilt(b,a,fil_avg);
    
    EMG=-mapminmax(fil_avg_low(100:end-100)',min(fil_avg(100:end-100)),max(fil_avg(100:end-100)));
    EMG=cat(2,zeros(1,100),EMG,zeros(1,100));

    fil=Data(CH_res,:);
    noise= median(abs(fil))/0.6745;
    [res_EMG]=  Peak_finder_negative_voltage_nodelay(EMG,noise*1.5,noise*20000);
    [res, V]=    Peak_finder_negative_voltage(fil,noise*3,noise*20);
    [ res_only, res_only_index] = res_emg_elim(res,res_EMG,0.05*Rs);

    spk=cat(2,spk,res_only+stream-s_time);
    clc
    disp(cat(2,'there is ', num2str(f_duration_sec), ' seconds of data per channel'));
    disp(cat(2, num2str(  floor(1000*(stream/Rs)/f_duration_sec)/10   ), ' % is done!'));
    
%     figure_ctrl('fil',1500,500);
%     t=(1: length (fil));
%     plot(fil); hold on; 
%     plot(-(fil_avg),'r');
%     plot(-fil_avg*0+noise*-3,'--g');
%     plot(EMG,'k');
%     plot (t(res_EMG), EMG(res_EMG), 'or','Markersize',8)
%     plot (t(res), fil(res), 'ok','Markersize',8)
%     plot (t(res_only), fil(res_only)*0+100, '.k','Markersize',20,'LineWidth',5)
%     plot (t(res), fil(res)*0+75, '.r','Markersize',20,'LineWidth',5);
%     hold off
%     pause()
end

%%
res=[spk/Rs; spk/Rs; spk/Rs; spk/Rs]';
SaveRippleEvents('20170711_450um_exp_170711_095948_CH27.spk.evt',res,26);
%%

Win= 50;
Bin_ms=1;
[H, B, hiB, loB]=CCG_res(res(:,1),res(:,1),Win,Bin_ms,Rs);

H(B==0)=0;
figure_ctrl('ACG', 400,400); bar(B,H); xlim([-30 30])

% %
% duration=40;
% load quad_in128.mat;
% ECoG_Intan=Quad_In128+33;
% 
% fig=figure_ctrl(cat(2,'Cell#',num2str(1)),400,800);
% time=spk(1:500);
% 
% data=Dat_tracker(f_in,time,duration,CH_N);
% ECoG=data(ECoG_Intan,:,:);
% ECoG_avg=mean(ECoG,3);
% for i=1:120
%     subaxis(10,12,i, 'Spacing', 0.01, 'Padding', 0, 'Margin', 0.01);
%     plot (ECoG_avg(i,:)); axis([1 40 -100 50]); axis_cleaner;
% end

