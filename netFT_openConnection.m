function [ u ] = netFT_openConnection(  )
%Open and return a UDP connection to the Sensor

netFT = '192.168.1.1';
port = 49152;
u = udp(netFT,port);
fopen(u);
end

