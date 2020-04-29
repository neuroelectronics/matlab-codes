function [spindles] = Spindle_Detect_wavelet(num_CH, spi_CH, varargin )
% SPINDLE_DETECT Detects Spindle events in LFP file
%       SPINDLES = SPINDLE_DETECT(NUM_CH, SPI_CH) uses default parameters
%       SPINDLES = SPINDLE_DETECT(NUM_CH, SPI_CH, passband, state, med_thresh,
%       ied_int, minburstInt, mean_thresh) uses specified parameters 
%
% REQUIREMENTS
%       NUM_CH: total number of channels
%       SPI_CH: channel for spindle analysis
%       Note:   must be in path of .lfp file and -states.mat(from StateEditor)
%                   file
%
% OPTIONAL INPUT ARGUMENTS
%       SPI_THRESHOLDS:     specifies thresholds for spindle beginning/end 
%                           and peak, in multiples of standard deviation 
%       STATE:              select between WAKE, NREM, or REM
%
% OUTPUT
%       SPINDLE.mat
%           named with fbasename+IED_CH where column 1 = start; 
%           column 2 = peak; column 3 = end; column 4 = power;
%       .spi.evt file
%           named with fbasename+IED_CH
%
% EXAMPLES:
% [SPINDLES] = SPINDLE_DETECT(128,94)
% [SPINDLES] = SPINDLE_DETECT(128,94, [2 3], [7 12], 'NREM');
%
% Naureen Ghani and Jennifer Gelinas (2018)

%Parse Inputs
p = inputParser;
%defaultSpi_thresholds = [-0.1 0];
defaultSpi_thresholds = [580+50 650+50];
defaultState = 'NREM';

addRequired(p, 'num_CH', @isnumeric);
addRequired(p, 'IED_CH', @isnumeric);
addOptional(p, 'spi_thresholds', defaultSpi_thresholds);
addOptional(p, 'state', defaultState);

parse(p, num_CH, spi_CH , varargin{:});

% Obtain States
state_mat = dir('*-states*');
load (state_mat.name);
StateIntervals = ConvertStatesVectorToIntervalSets(states);                 % 6 Intervalsets representing sleep states
REM = StateIntervals{5};
%NREM = or(StateIntervals{2}, StateIntervals{3});
NREM = StateIntervals{3};
WAKE = StateIntervals{1};

% Define state
state = p.Results.state;

% State parameter
if strcmp(state,'NREM')
    state = NREM;
elseif strcmp(state, 'REM')
    state = REM;
else
    strcmp(state,'WAKE')
    state = WAKE;
end

% Define thresholds
spi_lowThresholdFactor = p.Results.spi_thresholds(1);
spi_highThresholdFactor = p.Results.spi_thresholds(2);

% Load file and restrict to state
filename = dir('*_ratio.spi');
[~, fbasename, ~] = fileparts(filename.name);
lfp = LoadLfp(fbasename,num_CH,spi_CH, 'frequency', 125); 
restricted_lfp = [Range(Restrict(lfp,state),'s') Data(Restrict(lfp,state))];

inter = 400;
max = 2000;
min = 300; 

% Spindle Detection
[spindles] = FindSpindles_wav(restricted_lfp, 'thresholds', [spi_lowThresholdFactor spi_highThresholdFactor], 'durations', [inter max min], 'frequency', 125); 

% spindle_file = strcat(fbasename, '_', num2str(spi_CH), 'spindles_wav'); 
% save(spindle_file, 'spindles');
% spindle_events = strcat(fbasename,'_', num2str(spi_CH), '.spi.evt');
% channelID = spi_CH-1; 
% SaveRippleEvents(spindle_events, spindles, channelID);



end















