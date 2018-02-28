close all
%% udp port
u = netFT_openConnection;
%% parameters
numIterations = 100;
%% loop
netFT_startStreaming(u);
for i = 1:numIterations
    ftdata = netFT_getFreshData(u, 0);
    display(ftdata);    
end
netFT_stopStreaming(u);
% close the connection%% tidy upfclose(u);
delete(u);
clear u