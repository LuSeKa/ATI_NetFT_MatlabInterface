function [ ftdata ] = netFT_DataConversion( data )
%Convert raw data from the sensor to a 1x6 element vector of forces and
%torques that will be returned

fx = double(swapbytes(typecast(uint8(data(13:16)), 'int32')))/1000000;
fy = double(swapbytes(typecast(uint8(data(17:20)), 'int32')))/1000000;
fz = double(swapbytes(typecast(uint8(data(21:24)), 'int32')))/1000000;
tx = double(swapbytes(typecast(uint8(data(25:28)), 'int32')))/1000000;
ty = double(swapbytes(typecast(uint8(data(29:32)), 'int32')))/1000000;
tz = double(swapbytes(typecast(uint8(data(33:36)), 'int32')))/1000000;

ftdata=[fx,fy,fz,tx,ty,tz];

end

