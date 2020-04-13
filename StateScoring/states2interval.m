function [interval]=states2interval(states,state)
%%
% clc 
% clear
% state=1;
% load 20151120_NORtrain-states.mat

%%
list=find(states==state);
if isempty (list)
    interval=[];
else
    breakpoint_list=diff(list)>1;
    if sum(breakpoint_list)==0
        interval=[list(1); list(end);];
    else
        first_time=list(1);
        break_index=find(breakpoint_list==1);

        for i=1:length(break_index)
            break_interval(i,:)=[list(break_index(i));   list(break_index(i)+1)]';
        end

        [c r]=size(break_interval);

        for i=1: c

            if i==1
                first_point=list(1);
                interval(i,:)=[first_point;   break_interval(1,1)]';
            else
                interval(i,:)=[break_interval(i-1,2);   break_interval(i,1)]';

            end


        end
            interval(i+1,:)=[break_interval(i,2);   list(end)]';

    end
end