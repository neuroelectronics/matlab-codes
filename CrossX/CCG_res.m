function [H, B, hiB, loB]=CCG_res(res1,res2,Win,Bin_ms,Rs)

res_ref=res1*Rs;
res_DUT=res2*Rs;
Win=Win*2;
[H,B]= CrossCorr_ms( double(res_ref/Rs*1e3),double(res_DUT/Rs*1e3 )  ,Bin_ms  ,Win/Bin_ms);



cchEvt = (H.*length(res_ref)*Bin_ms/1000)';

window = 21;                %number of bins for convolution
alpha = 0.05;

[dumy, pred, dumy ] = cch_conv(round(cchEvt),window);
hiBound = poissinv( 1 - alpha, pred);
loBound = poissinv( alpha, pred);

hiB = hiBound/(length(res_ref)*Bin_ms/1000);
loB = loBound/(length(res_ref)*Bin_ms/1000);
