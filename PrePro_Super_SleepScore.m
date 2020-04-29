%% PrePro_Super_SleepScore
%Adapted from buzcode: SleepScoreMaster
%July 15, 2019 
%Prawesh Dahal (TNL)
%
%EMGCH option1
%[sessionInfo.AnatGrps(1).Channels(1:2) SWChannels(1:2)
%ThetaChannels(1:2)];

function PrePro_Super_SleepScore
 
warning('off','all')

basePath = pwd;
slash_index=find(basePath=='/');
currentFolder=basePath(slash_index(end)+1:end);

disp(['Auto Sleep Scoring for file ', currentFolder])

sessionInfo = LoadParameters(basePath);

ThetaChannels = sessionInfo.AnatGrps(15).Channels(1:5);
disp(['Picking HP CH: ', num2str(ThetaChannels) ])

SWChannels = sessionInfo.AnatGrps(16).Channels(1:2);
disp(['Picking CX CH: ', num2str(SWChannels) ])

EMGCH = sessionInfo.AnatGrps(17).Channels(1:3); % needs at least 3 channels
disp(['Picking EMG  : ', num2str(EMGCH) ])

lfp_file = dir('*.lfp');
lfp_filename=lfp_file.name;
basename= lfp_filename(1:end-4);
CH_N=xml2CH_N(cat(2,lfp_file.name(1:end-4),'.xml'));  
[~, fbasename, ~] = fileparts(lfp_file.name);
lfp = LoadLfp(fbasename,CH_N,EMGCH);

SleepScoreMaster(basePath,EMGCH, 'SWChannels',SWChannels,'ThetaChannels',ThetaChannels)
filname = strcat(currentFolder, '.SleepState.states.mat');
 
load(filname);
states = SleepState.idx.states; 
states = states';  

lfp_file = dir('*.lfp');
[~, fbasename, ~] = fileparts(lfp_file.name);
CH_N=xml2CH_N(cat(2,lfp_file.name(1:end-4),'.xml'));

sel_data = readmulti(strcat(currentFolder, '.lfp'), CH_N, 170); 
dLfp = sel_data(1:1250:end); 

states(1,(length(states):(length(dLfp) - 1))) = 0; 
disp('Saving autostates .mat')

savename = [fbasename, '-autostates.mat']; 
save(savename,'states')

end

