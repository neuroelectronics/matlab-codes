% flist=dir('*.DTA');
function EIS_plot()
timestr=datestr(now,'yyyymmdd_hh_');
files=uigetfile('*.DTA','multiselect','on');
flist=[];
if(~iscell(files))
    files={files};
end
for idx=1:length(files)
    flist(idx).name=files{idx};
end
N=length(flist);
data=cell(N,1);
plt_fun=@(x,c) loglog(x(:,4),x(:,8),'color',c);
data_fun=@(x) [x(:,8)];
lgd=arrayfun(@(x)flist(x).name,1:N,'UniformOutput',0);
clr=hsv2rgb([linspace(0,1,N+1)' ones(N+1,1) 0.9.*ones(N+1,1)]);
clr=reshape([clr ]',3,[])';
strstring=strsplit(pwd,'\');
titlestr=strstring{end};
data_collected=[];

figure()
DTP_all=[];
for idx=1:N
    data{idx}=readmatrix(flist(idx).name,'FileType','text');
    DTP=data{idx};
    DTP(isnan(DTP(:,7)),:)=[];%remove invalid trial
    data_collected=[data_collected data_fun(DTP)];
    fx=plt_fun(DTP,clr(idx,:));
    if(isempty(DTP_all))
        DTP_all=[DTP(:,[4,8])];
    else
        DTP_all=[DTP_all DTP(:,[8])];
    end
    hold on;
    if(~isempty(strfind(lgd{idx},'PEDOT')))
        set(fx,'linestyle','--');
    end
    xlabel('Frequency(Hz)');
    ylabel('Zmod(Ohm)')
    %save 2 xlsx file

end
f_xls=pwd;
folder_idx=strfind(f_xls,'\');
folder_name=f_xls(folder_idx(end)+1:end);
f_xls=[folder_name '_' titlestr '_Zmod.xls'];
fnames={flist(:).name};
fnames=cellfun(@(x) x(1:end-4) ,fnames,'UniformOutput',0);
titles={'Frequency(Hz)' fnames{:}};
writecell(titles,f_xls,'Range','A1');
writematrix(DTP_all,f_xls,'Range','A2');
% loglog(DTP(:,4),f_GBW((DTP(:,4))),'--');
legend(lgd,'Interpreter','None')
title([titlestr ' Zmod'],'Interpreter','none');
hold off;
saveas(gcf,[timestr 'Amod.jpg']);
%%
figure()
plt_fun=@(x,c) semilogx(x(:,4),x(:,9),'color',c);
DTP_all=[];
for idx=1:N
    data{idx}=readmatrix(flist(idx).name,'FileType','text');
    DTP=data{idx};
    fx=plt_fun(DTP,clr(idx,:));
    hold on;
    if(isempty(DTP_all))
        DTP_all=[DTP(:,[4,9])];
    else
        DTP_all=[DTP_all DTP(:,[9])];
    end
    
    if(~isempty(strfind(lgd{idx},'PEDOT')))
        set(fx,'linestyle','--');
    end
    xlabel('Frequency(Hz)');
    ylabel('Angle(Degree)')
end
f_xls=[folder_name '_' titlestr  '_Zphase.xls'];
fnames={flist(:).name};
fnames=cellfun(@(x) x(1:end-4) ,fnames,'UniformOutput',0);
titles={'Frequency(Hz)' fnames{:}};
writecell(titles,f_xls,'Range','A1');
writematrix(DTP_all,f_xls,'Range','A2');
legend(lgd,'Interpreter','None','location','NE')
title([titlestr ' Phase'],'Interpreter','none');
hold off;
saveas(gcf,[timestr 'Aphase.jpg']);