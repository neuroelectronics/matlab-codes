function [clus] = lfp2CHclusters(lfpres, tolerance, bad_ch, map)
% LFPres to a cluster of CHs for each event time point
% Input: lfpres - 1x#CHN struct of detected events
%        tolerance(in ms) 
%Example: gammaclus = lfp2CHclusters(gammas,10); %tolerance for gam=10ms

%%%%%%%%%%%--MAPS--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if map == 'v3'
    
    NG = load('/home/prawesh/Documents/Insync/MATLAB_codes/Gamma_Oscillations/NG2019_3_info.mat'); 
    NGmap = NG.NG_2019_v3.map; 
    NGdim = NG.NG_2019_v3.dim;      

elseif map == 'v4'

    %NGmap_V4
    NG = load('/home/prawesh/Documents/Insync/MATLAB_codes/Gamma_Oscillations/NG2019_4_info.mat'); 
    NGmap = NG.NG_2019_v4.map; 
    NGdim = NG.NG_2019_v4.dim;  
    
end 
%%%%%%%%%%%--MAPS--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tol = tolerance/1000; 

%If there are bad channels, remove events from those channel to save
%computation time as well as erroneous events
for i = 1:length(bad_ch)
    
    lfpres(bad_ch(i)).res = 0; 
    
end

for i = 1:length(lfpres)
    d = size(lfpres(i).res); %if this channel isn't bad (events x 4)
    if d(2) == 4    
        newgam(i).mid = lfpres(i).res(:,2); %extract only peak event time, ignore start/stop
    else
        newgam(i).mid = lfpres(i).res;
    end
    
end 

chk = 0;
for i = 1:length(newgam) %Go through all channels
    
    A = newgam(i).mid; %Ref CH's res
    
    for j = 1:length(A) %Go through all events of that channel
        
        res = A(j); %Extract event-by-event
        
        if ~isnan(res) 
            
            tmp = []; 
            
            for k = 1:length(newgam) %Check that event among all channels
                
                flag = 0;
                B = newgam(k).mid; %Compare CH's res
                
                for l = 1:length(B)                    
                    
                    resdif = abs(res - B(l)); %Calculate the difference
                    
                    if resdif < tol      
                        
                        tmp = [tmp k];
                        newgam(k).mid(l) = NaN;
                        flag = 1;    %Matching res found in this CH, NaN that res, break!
                        break
                        
                    end
                    
                    if flag==1
                        break      %Break, go to next CH
                    end                                                       
                end              
            end
              
            if length(tmp)>1
                chk = chk+1;
                clus(chk).res = res;
                clus(chk).match = tmp;
                clus(chk).unmatch = setdiff(NGmap,tmp); 
            end 
             
        end
    end
end 


end

