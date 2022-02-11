function [ ft_offset ] = netFT_getOffset( u, numOffsetSamples )
%get offsets and return as 1x6 vector

ft_offset = zeros(1,6);
    for i = 1:numOffsetSamples
        ft_offset = ft_offset + netFT_getFreshData(u,0) / numOffsetSamples;
    end

end