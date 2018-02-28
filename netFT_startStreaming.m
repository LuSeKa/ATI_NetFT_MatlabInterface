function [  ] = netFT_startStreaming( u )
%send the start streaming command

startRequest = ['12';'34';'00';'02';'00';'00';'00';'00'];
startCommand = hexlistToString(startRequest);
fwrite(u, startCommand) % send message to start rdt streaming
end

