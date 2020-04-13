function [clus, uniq] = lfp2CHclusters_unique(lfpres, tolerance)
% LFPres to a cluster of CHs for each event time point
% Input: lfpres - 1x#CHN struct of detected events
%        tolerance(in ms) 
%Example: gammaclus = lfp2CHclusters(gammas,10); %tolerance for gam=10ms

tol = tolerance/1000;
chk = 0;
AAA= 0;

for i = 1:length(lfpres)
    
    newgam(i).mid = lfpres(i).res; %extract only peak event time, ignore start/stop
    
end 

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
            else
                AAA=AAA+1;
                uniq(AAA).res=res;
                uniq(AAA).match = tmp;
            end
             
            
        end
    end
end 


end

