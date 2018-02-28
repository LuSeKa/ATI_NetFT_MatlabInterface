function [  ] = netFT_stopStreaming( u )
%send the stop streaming command

stopRequest = ['12';'34';'00';'00';'00';'00';'00';'00'];
stopCommand = hexlistToString(stopRequest);
fwrite(u, stopCommand) % send message to stop rdt streaming
end

