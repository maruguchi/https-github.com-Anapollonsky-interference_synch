classdef OFDMPre < matlab.System
%OFDMPre Pre-Process Time x Subcarrier signal for OFDM transmission.
    methods (Access=protected)
        function out = stepImpl(~, data, mu)
            td = ifft(fftshift(data));
            out = [td(1:mu, :); td(:, :)];
        end
        
        function numIn = getNumInputsImpl(~)
           numIn = 2;
        end
 
        function numOut = getNumOutputsImpl(~)
           numOut = 1;
        end
    end
end