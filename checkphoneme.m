function [out] = checkphoneme(in)
%Takes in phoneme, assigns number
if strcmp(in,'SIL'); out = 0; end
if strcmp(in,'AA1'); out = 1; end
if strcmp(in,'AE1'); out = 2; end
if strcmp(in,'AH0'); out = 3; end
if strcmp(in,'AH1'); out = 4; end
if strcmp(in,'AO1'); out = 5; end
if strcmp(in,'AW1'); out = 6; end
if strcmp(in,'AY1'); out = 7; end
if strcmp(in,'EH1'); out = 8; end
if strcmp(in,'EY1'); out = 9; end
if strcmp(in,'IH0'); out = 10; end
if strcmp(in,'IH1'); out = 11; end
if strcmp(in,'IY1'); out = 12; end
if strcmp(in,'OW0'); out = 13; end
if strcmp(in,'OW1'); out = 14; end
if strcmp(in,'UW0'); out = 15; end
if strcmp(in,'UW1'); out = 16; end
if strcmp(in,'B'); out = 17; end
if strcmp(in,'CH'); out = 18; end
if strcmp(in,'D'); out = 19; end
if strcmp(in,'DH'); out = 20; end
if strcmp(in,'F'); out = 21; end
if strcmp(in,'G'); out = 22; end
if strcmp(in,'HH'); out = 23; end
if strcmp(in,'JH'); out = 24; end
if strcmp(in,'K'); out = 25; end
if strcmp(in,'L'); out = 26; end
if strcmp(in,'M'); out = 27; end
if strcmp(in,'N'); out = 28; end
if strcmp(in,'P'); out = 29; end
if strcmp(in,'R'); out = 30; end
if strcmp(in,'S'); out = 31; end
if strcmp(in,'T'); out = 32; end
if strcmp(in,'TH'); out = 33; end
if strcmp(in,'V'); out = 34; end
if strcmp(in,'W'); out = 35; end
if strcmp(in,'Y'); out = 36; end
if strcmp(in,'Z'); out = 37; end

if ~exist('out'); out = -1; end %if undefined return -1 as 'error'


end




