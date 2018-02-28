% Test script for NetFT sensor connnctivity

%% udp port
u = netFT_openConnection;
%% parameters
numIterations = 500;
numOffsetSamples = 20;
%% start streaming
netFT_startStreaming(u);
%% offset
offset = netFT_getOffset(u, numOffsetSamples);
%% loop
for i = 1:numIterations
    ftdata = netFT_getFreshData(u, offset);
    display(ftdata);    
end
netFT_stopStreaming(u);
%% tidy up
fclose(u);
delete(u);
clear u