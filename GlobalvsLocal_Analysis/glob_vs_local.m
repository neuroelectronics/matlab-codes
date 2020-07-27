function [globidx,locidx] = glob_vs_local(clus,indx)
 
% Give a cluster structure and set of idx, tells you which of those
%indices as a local or has a global spindle 

globidx = []; locidx = []; 

for i = 1:length(indx)
    
    clushist = clus(indx(i)).cxcouple; 
    
    if isempty(clushist)
        globidx = [globidx indx(i)];
       
    elseif ~isempty(clushist)
        
        tmp = prod(clushist(:,2));
        
        if tmp > 0
            if clushist(1,2)>=0.5 && clushist(2,2)>=0.5 && clushist(3,2)>=0.5 && clushist(4,2)>=0.5 && clushist(5,2)>=0.5 && clushist(6,2)>=0.5 && clushist(7,2)>=0.5
            
                globidx = [globidx indx(i)];
                
            else                
                locidx = [locidx indx(i)];
            end
            
        else 
            locidx = [locidx indx(i)];
        end       
    end  
    
end


if length(locidx) + length(globidx) ~= length(indx) 
    error('glob + loc is not = total idx')
end

end

