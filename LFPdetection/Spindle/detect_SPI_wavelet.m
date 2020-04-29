%% Prawesh Dahal
% May 8, 2019 
%Detect spindles for lfp- wavelet - 

close all
clear all
clc 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Run this if you haven't create a .spi ratio file (uncomment below)
%lfp2spi_detect_wavelet
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Use this code after you have a .spi ratio (9-20Hz) file 

lfp_file = dir('*.lfp');
CH_N=xml2CH_N(cat(2,lfp_file.name(1:end-4),'.xml'));
[~, fbasename, ~] = fileparts(lfp_file.name);
spi_file = strcat(fbasename, '_SPI_RES'); 

%% Spindle Detection
tic
mkdir SPI_Events
parfor i = 1 : CH_N

[spindles] = Spindle_Detect_wavelet(CH_N, i)
 
spindle(i).res = spindles; 

spindle_events = strcat(fbasename,'_', num2str(i), '.spi.evt');
channelID = i-1; 
SaveRippleEvents(spindle_events, spindles, channelID);

movefile([strcat(fbasename,'_', num2str(i), '.spi.evt')], strcat(pwd,'/','SPI_Events')) 

end 

toc
save(spi_file, 'spindle');

%%

% 
% 
% %%
% close all
% clear all
% clc
% 
% xml_file=dir('*.xml');[filepath,filename,ext] = fileparts(xml_file.name);
% detec_file = dir('*_SPI_RES_0421.mat'); load(detec_file.name); lfp = spindle; tol = 1000;
% 
%     myclus = lfp2CHclusters(lfp,tol,[],'v4');      
%     for j = 1:length(myclus)        
%         channels = myclus(j).match;
%         cxlabels = CH2corticalabels(channels,'v4');
%         myclus(j).cxlabels = cxlabels;         
%     end
% 
%     for i = 1:length(myclus)
% 
%         labels = myclus(i).cxlabels;   
%         [B,H] = CXlabels2hist(labels,[],'v4');
%         myclus(i).cxcouple(:,1) = B;
%         myclus(i).cxcouple(:,2) = H;    
%     
%     end
% 
% spiclus = myclus; save_file = strcat(filename, '_spi_clus_0421'); save(save_file, 'spiclus');





 