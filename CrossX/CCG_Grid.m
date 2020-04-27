%function CCG_Grid()

clc
clear 
close all

%load IED.mat
load spindles.mat
load NY394_NF_prenight_clin1_pt1119NREMIED_clean.mat;
Win=10000*2;
Bin_ms=500;
Rs=1250;

load NY394_CHkey.mat
Grid_map=CH_key(1:54);
for i=1:54
    site_tmp=cell2mat(Grid_map(i));
    G_map(i)=str2double(site_tmp(7:end-4));
end


%G_map=fliplr(G_map);
%%
figure_spk_avg=figure('Name','Spatial Cross-corealtion over 8x8 grid surface'  );
set(0,'Units','pixels') ;
scnsize = get(0,'ScreenSize');
position = get(figure_spk_avg,'Position');
outerpos = get(figure_spk_avg,'OuterPosition');
borders = outerpos - position;
edge = -borders(1)/2;
pos1=[5,5,1000,1000];
%pos1 = [edge+200+scnsize(3)/2, 5, scnsize(3)/2.5 - edge, scnsize(4)/1.09];
set(figure_spk_avg,'OuterPosition',pos1) ;

res_IED=IED(:,1);

for CH=1:54
   
        res_spi=(spindles(CH).starts + spindles(CH).ends)./2;
        
    if length(res_spi)>5 
        [H(CH,:),B ]= CrossCorr_ms( res_IED*1e3,res_spi*1e3   ,Bin_ms  ,Win/Bin_ms);
         H_mean(CH,:)=mean(H(CH,:));
    else
        H(CH,:)=zeros(21,1);
    end
    
    
end

%G_map=G_map(end:1);

for CH=1:54
    subaxis(8,8,G_map(CH), 'Spacing', 0.05, 'Padding', 0, 'Margin', 0.01);
    bar(B, smooth(H((CH),:),3));
    hold on 
    plot(B,H_mean(CH,:)*ones(1,41),'--r','LineWidth',1);
   % plot(B,H_mean_total,'--g');
    axis([-Win/2 Win/2 0 0.05])
%     if H(CH,Win/Bin_ms/2+1)> 0.03%H_mean_total*3
%         SPI_IED_sig(CH,:)=H(CH,Win/Bin_ms/2+1);
%     else
%         SPI_IED_sig(CH,:)=-1;
%     end
    
    
end
