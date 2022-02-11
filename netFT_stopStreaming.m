function [  ] = netFT_stopStreaming( u )
%send the stop streaming command

stopRequest = ['12';'34';'00';'00';'00';'00';'00';'00'];
stopCommand = hexlistToString(stopRequest);
netFT = "192.168.1.1";
port = 49152;
write(u, stopCommand, "string", netFT, port) % send message to stop rdt streaming

end