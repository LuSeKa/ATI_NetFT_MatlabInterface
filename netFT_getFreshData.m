function [ ftdata ] = netFT_getFreshData( u, ft_offset )
%get the most recent force/torque data from the sensor and return after
%offset compensation

flushinput(u)
data = fscanf(u);
ftdata = netFT_DataConversion(data)-ft_offset;
end

