function [ ftdata ] = netFT_getFreshData( u, ft_offset )
% get the most recent force/torque data from the sensor and return after
% offset compensation
% 1:4 = rdt_sequence    / 5:8 = ft_sequence     / 9:12 = status
% 13:16 = Fx            / 17:20 = Fy            / 21:24 = Fz
% 25:28 = Tx            / 29:32 = Ty            / 33:36 = Tz

flush(u, "input")
data = read(u, 36);
ftdata = netFT_DataConversion(data) - ft_offset;

end