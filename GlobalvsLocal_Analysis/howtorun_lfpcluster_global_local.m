%% How to run lfp to regional clusters and perform global/local analysis 
%Prawesh - July 27, 2020
%*************************************************************************
%%% **** IMPORTANT FOR FIRST USE: 
% 1. Line 22 - open function lfp2CHclusters and change the directory where you
% have NG Maps. 
% 2. Have spindle detection file, bad channels (matlab indexed) file ready
%**************************************************************************

%Load spindle detection
xml_file=dir('*.xml');[filepath,filename,ext] = fileparts(xml_file.name);
detec_file = dir('*_SPI_nwRES.mat'); %Spindle detection file (has #channels x 4 struct) 
load(detec_file.name); 
lfp = spindle; %name of the SPI detection variable
tol = 1000;

%Load bad channels
bad_file = dir('*__bad_CH.mat'); load(bad_file.name);

%Cluster LFP anatomically and label the channels and create a histogram of
%the % channels expressing each event in each of the 7 regions
myclus = lfp2CHclusters(lfp,tol,bad_ch,'v4'); %****<---- open+edit this function
for j = 1:length(myclus)
    channels = myclus(j).match;
    cxlabels = CH2corticalabels(channels,'v4');
    myclus(j).cxlabels = cxlabels;
    [B,H] = CXlabels2hist(cxlabels,bad_ch,'v4');
    myclus(j).cxcouple(:,1) = B;
    myclus(j).cxcouple(:,2) = H;    
end
 
spiclus = myclus; 
% save_file = strcat(filename, '_spi_clus_nw'); 
% save(save_file, 'spiclus');

%Global versus Local analysis
[globidx,locidx] = glob_vs_local(spiclus,1:length(spiclus));

%Globidx will give you the indices of the events in spiclus which is global
%Locidx will give you the indices of the events in spiclus which is local

