function [ command ] = hexlistToString( hexlist )
%Convert a list of hex values to a command string for the net-FT sensor

declist = hex2dec(hexlist);
command = strjoin(string([native2unicode(declist(1)),native2unicode(declist(2)),native2unicode(declist(3)),native2unicode(declist(4)),native2unicode(declist(5)),native2unicode(declist(6)),native2unicode(declist(7)),native2unicode(declist(8))]));

end

