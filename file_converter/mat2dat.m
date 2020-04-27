function mat2dat(Data,f_out)
%streams data, filters it, and writes it into a new file with the same filename and defined extention 
% Inputs:
% Data:           matrix or vectro from matlab, [channels x time ]
% fount:          output file name. for exmaple: rat2_july_7.dat

fid=fopen(f_out,'a+');

Data_size=size(Data);
fwrite(fid,int16(reshape(Data,1,Data_size(1)*Data_size(2))'),'int16');  

fclose(fid);