function [ u ] = netFT_openConnection(  )
%Open and return a UDP connection to the Sensor

u = udpport('byte', 'IPV4');
end