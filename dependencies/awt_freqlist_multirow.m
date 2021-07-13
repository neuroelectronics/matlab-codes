%% multirow awt_freqlist, Dim1 is timeaxis, Dim2 is channel axis
function W=awt_freqlist_multirow(data,fs,freqlist,type)
W=zeros(size(data,1),length(freqlist),size(data,2));
parfor idx=1:size(data,2)
    W(:,:,idx)=awt_freqlist(data(:,idx),fs,freqlist,type);
end