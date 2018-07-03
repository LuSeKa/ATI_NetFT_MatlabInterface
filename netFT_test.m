% Test script for NetFT sensor connnctivity

%% udp port
u = netFT_openConnection;
%% parameters
numIterations = 1000;
numOffsetSamples = 20;
%% start streaming
netFT_startStreaming(u);
%% offset
offset = netFT_getOffset(u, numOffsetSamples);

result=zeros(numIterations,6);
%% loop
for i = 1:numIterations
    ftdata = netFT_getFreshData(u, offset);
    display(ftdata);
    result(i,:)=ftdata;
end

netFT_stopStreaming(u);
%% plot data
plot(result(:,:));

%% tidy up
fclose(u);
delete(u);
clear u