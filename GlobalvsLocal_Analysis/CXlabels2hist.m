function [B,H] = CXlabels2hist(cxlabels,bad_ch,map)
% Find % of event expression by channels grouped in each region 
% Compatible with both NGMap_version_3 + 4 

if map == 'v4'
    
    M   = [57 34 110 61 62 35 64 39 63 42 59 46 49];  
    S1L = [124 54 9 69 83 38 116 104 99 11 117 105 98 92 70 119 127 60 93 71 118 126 58 13 87 108 103 56 15 86 109 102 96 18 72 65];
    S1B = [31 68 82 27 79 30 78 26 80 25 81 21 17 16 14 10];
    PTA = [41 120 43 97 20 73 45 5 91 84 19];
    RSA = [55 51 48 128 44 40 37 32];
    V2  = [107 47 3 90 85 23 6 106 50 1 66 75 24 2 122 100 7 123 36 111 112 113 115 114 121];
    V1  = [125 101 52  95 94 67 88 89 74 76 77 28 33 29 22 4 8];    
    
    reglen = [length(M) length(S1L) length(S1B) length(PTA) length(RSA) length(V2) length(V1)]; 
    
elseif map == 'v3'
    
    M = [71 51 84 58 70 52 59 76 46 53 75 47];
    RSA = [69 60 68 61 74 67 55 62 73 66 56 63 65];
    PTA = [54 81 41 94 5 107 87 35 100 11 113]; 
    S1B = [123 30 116 16 109 24 122 115 18 25 121 114 19 26 120 20];
    S1L = [38 97 8 110 23 77 45 90 1 103 83 39 96 7 89 33 102 31 82 40 95 6 108 88 34 101 32];
    V1 = [99 10 112 3 105 28 85 37 98 9 111 78 44 91 2 104 29 117];
    V2 = [48 80 42 93 4 106 27 119 49 86 36 21 79 43 92 118 72 50 22 57];
   
   reglen = [length(M) length(S1L) length(S1B) length(PTA) length(RSA) length(V2) length(V1)];     
    
end 

%Above are the channels in the grid
%If there are bad channels, those valid anatomical channels gotta change
if ~isempty(bad_ch)  
    
    M   = setdiff(M,bad_ch);
    S1L = setdiff(S1L, bad_ch);
    S1B = setdiff(S1B, bad_ch);
    PTA = setdiff(PTA, bad_ch);
    RSA = setdiff(RSA, bad_ch);
    V2  = setdiff(V2, bad_ch);
    V1  = setdiff(V1, bad_ch);

    reglen = [length(M) length(S1L) length(S1B) length(PTA) length(RSA) length(V2) length(V1)]; 
    
end 

B=1:7;
B=B';
for i = 1:7 
    
%     if length(find(cxlabels==i)) >= floor(0.5*reglen(i))    
        H(i)=(length(find(cxlabels==i)))/reglen(i);
%     else
%         H(i)=0;
%     end 
    
end 

H=H';

 end

