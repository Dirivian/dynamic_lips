function out = assignphoneme(in)
%Function to return the appropriate phonemes for an input word
%
%input: in = word to assign phonemes to
%
%output: out = vector of phonemes
%
%Begin Function:

%Check which word input is and return appropriate phonemes
if strcmp(in,'a'); out = cellstr(['AHO';'EYI']); end
if strcmp(in,'b'); out = cellstr(['B  ';'IY1']); end
if strcmp(in,'c'); out = cellstr(['S  ';'IY1']); end 
if strcmp(in,'d'); out = cellstr(['D  ';'IY1']); end
if strcmp(in,'e'); out = cellstr('IY1'); end
if strcmp(in,'f'); out = cellstr(['EH1';'F  ']); end
if strcmp(in,'g'); out = cellstr(['JH ';'IY1']); end
if strcmp(in,'h'); out = cellstr(['EY1';'CH ']); end
if strcmp(in,'i'); out = cellstr('AY1'); end
if strcmp(in,'j'); out = cellstr(['JH ';'EY1']); end
if strcmp(in,'k'); out = cellstr(['K  ';'EY1']); end
if strcmp(in,'l'); out = cellstr(['EH1';'L  ']); end
if strcmp(in,'m'); out = cellstr(['EH1';'M  ']); end
if strcmp(in,'n'); out = cellstr(['EH1';'N  ']); end
if strcmp(in,'o'); out = cellstr(['OW1']); end
if strcmp(in,'p'); out = cellstr(['P  ';'IY1']); end
if strcmp(in,'q'); out = cellstr(['K  ';'Y  ';'UW1']); end
if strcmp(in,'r'); out = cellstr(['AA1';'R  ']); end
if strcmp(in,'s'); out = cellstr(['EH1';'S  ']); end
if strcmp(in,'t'); out = cellstr(['T  ';'IY1']); end
if strcmp(in,'u'); out = cellstr(['Y  ';'UW1']); end
if strcmp(in,'v'); out = cellstr(['V  ';'IY1']); end
if strcmp(in,'w'); out = cellstr(['D  ';'AH1';'B  ';'AH0';'L  ';'Y  ';'UW0']); end
if strcmp(in,'x'); out = cellstr(['EH1';'K  ';'S  ']); end
if strcmp(in,'y'); out = cellstr(['W  ';'AY1']); end
if strcmp(in,'z'); out = cellstr(['Z  ';'IY1']); end
if strcmp(in,'again'); out = cellstr(['AH0';'G  ';'EH1';'N  ';'AH0';'G  ';'EY1';'N  ']); end
if strcmp(in,'soon'); out = cellstr(['S  ';'UW1';'N  ']); end
if strcmp(in,'now'); out = cellstr(['N  ';'AW1']); end
if strcmp(in,'please'); out = cellstr(['P  ';'L  ';'IY1';'Z  ']); end
if strcmp(in,'bin'); out = cellstr(['B  ';'IH1';'N  ']); end
if strcmp(in,'lay'); out = cellstr(['L  ';'EY1']); end
if strcmp(in,'place'); out = cellstr(['P  ';'L  ';'EY1';'S  ']); end
if strcmp(in,'set'); out = cellstr(['S  ';'EH1';'T  ']); end
if strcmp(in,'blue'); out = cellstr(['B  ';'L  ';'UW1']); end
if strcmp(in,'green'); out = cellstr(['G  ';'R  ';'IY1';'N  ']); end
if strcmp(in,'red'); out = cellstr(['R  ';'EH1';'D  ']); end
if strcmp(in,'white'); out = cellstr(['W  ';'AY1';'T  ';'HH ';'W  ';'AY1';'T  ']); end
if strcmp(in,'at'); out = cellstr(['AE1';'T  ']); end
if strcmp(in,'by'); out = cellstr(['B  ';'AY1']); end
if strcmp(in,'with'); out = cellstr(['W  ';'IH1';'DH ';'W  ';'IH1';'TH ';'W  ';'IH0';'TH ';'W  ';'IH0';'DH ']); end
if strcmp(in,'in'); out = cellstr(['IH0';'N  ';'IH1';'N  ']); end
if strcmp(in,'zero'); out = cellstr(['Z  ';'IH1';'R  ';'OW0';'Z  ';'IY1';'R  ';'OW0']); end
if strcmp(in,'one'); out = cellstr(['W  ';'AH1';'N  ';'HH ';'W  ';'AH1';'N  ']); end
if strcmp(in,'two'); out = cellstr(['T  ';'UW1']); end
if strcmp(in,'three'); out = cellstr(['TH ';'R  ';'IY1']); end
if strcmp(in,'four'); out = cellstr(['F  ';'AO1';'R  ']); end
if strcmp(in,'five'); out = cellstr(['F  ';'AY1';'V  ']); end
if strcmp(in,'six'); out = cellstr(['S  ';'IH1';'K  ';'S  ']); end
if strcmp(in,'seven'); out = cellstr(['S  ';'EH1';'V  ';'AH0';'N  ']); end
if strcmp(in,'eight'); out = cellstr(['EY1';'T  ']); end
if strcmp(in,'nine'); out = cellstr(['N  ';'AY1';'N  ']); end
if strcmp(in,'sil'); out = cellstr('SIL'); end

%return numeric 0 if input doesnt match anything
if isempty(out); out = 0; end

end

