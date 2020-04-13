function [fout] = CreateChannelMapFile_KS(basename, channel_list,coordinates,SpikeGroup,good_CH,CH_N,Rs)


connected=zeros(CH_N,1);
connected(good_CH)=1;
connected=logical(connected);



X = nan(1,CH_N);
Y = nan(1,CH_N);

X(channel_list)=coordinates(:,1);
Y(channel_list)=coordinates(:,2);

chanMap = 1:CH_N;
chanMap0ind = chanMap - 1;


% % index = 1:128;
% % %index = 1:length (channel_list);
% % NotUsedCH = find(ismember(index, channel_list)==0) ;
% % chanMap1  = cat (2, channel_list, NotUsedCH);
% % TheRestCH =128+1:CH_N;
% % chanMap = cat (2,chanMap1,TheRestCH);
% % chanMap0ind = chanMap - 1;


% index = find(connected==0);
% chanMap1=cat(2,channel_list,index');

% tmp=channel_list;
% chanMap = tmp;
% chanMap(120) = 34;
% chanMap(121:128+32)=121:128+32;
% chanMap0ind = chanMap - 1;

% % xcoords   = coordinates(:,1); % xcords and ycoords are used to group channels in groups of 4. This 
% % xcoords(length(coordinates)+1:CH_N) = NaN;
% % xcoords=round(xcoords);
xcoords =X;

% probably doesn't have any effect of clustering performance
% % ycoords   = coordinates(:,2);
% % ycoords(length(coordinates)+1:CH_N) = NaN;
% % ycoords=round(ycoords);
ycoords =Y;

K=nan(1,CH_N);
index=1:CH_N;
K(channel_list)=SpikeGroup;
kcoords = K;

% % kcoords   = 1:119; % grouping of channels (i.e. tetrode groups); Same number means they belong to the same shank or tetorde
% % kcoords(length(coordinates)+1:CH_N) = NaN;


CH_summary(2,:) = chanMap;
CH_summary(3,:) = xcoords;
CH_summary(4,:) = ycoords;
CH_summary(5,:) = kcoords;
CH_summary(1,:) = connected;
CH_summary=CH_summary';

%Rs = 20000; % sampling frequency
fout = cat(2,basename,'_ChannelFile_KS.mat');
save(fout,'chanMap','connected', 'xcoords', 'ycoords', 'kcoords', 'chanMap0ind', 'Rs','CH_summary');