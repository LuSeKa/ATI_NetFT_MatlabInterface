function [  ] = netFT_startStreaming( u )
% send the start streaming command

startRequest = ['12';'34';'00';'02';'00';'00';'00';'00'];
startCommand = hexlistToString(startRequest);
netFT = "192.168.1.1";
port = 49152;
write(u, startCommand, "string", netFT, port) % send message to start rdt streaming

end