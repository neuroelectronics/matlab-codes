clc
clear 
close all

%PrePro_rename_amplifier2session
files= dir('20*');
k=1;

for i=1:length (files)
   cd (files(i).name);
   dat_f= dir('20*');
   if length(dat_f) == 1
        files_KS(k).name = files(i).name;
        k=k+1;
   end
   cd ..
end
%%
for i = 1:length (files_KS)
   cd (files_KS(i).name);
   
   dat_f= dir('20*');
   if length(dat_f) == 1
         cd (dat_f.name)
         goodCH_file=dir('*_goodCH.mat');
         if ~isempty (goodCH_file);
            Run_kilosort 
         end
         cd ..
   end
cd ..
end