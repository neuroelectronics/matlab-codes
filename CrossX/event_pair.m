function [res_yes, res_no ] = event_pair(  spi_res, IED_res, interval )
% Separates res_2split into 2 res files; one that has a res_splitter
% timepoint an interval away from it (res_yes) and one that does not
% (res_no)
% must load the res_files and input the variable names into the function

% res must have start of event as a column vector in column 1

if isempty(spi_res) || isempty(IED_res) == 1;
    res_yes = [];
    res_no = [];
else
    
    if interval > 0
        resplitter_end = IED_res + interval;
        resplitter_int = intervalSet(IED_res, resplitter_end); %intervalSet(res_splitter(:, 1)-0.1, resplitter_end);       % 0.1 buffer for error in detection of spindle start
    else
        resplitter_end = IED_res + interval;
        resplitter_int = intervalSet(resplitter_end, IED_res); %intervalSet(resplitter_end, res_splitter(:, 1)+0.1);      % 0.1 buffer for error in detection of spindle start
    end
    
res_2split_start = spi_res(:, 1); 
res_belong = belong(resplitter_int, res_2split_start);
res1_index = find(res_belong == 1);
res_yes = spi_res(res1_index, :);

res2_index = find(res_belong == 0);
res_no = spi_res(res2_index, :);
end

end

