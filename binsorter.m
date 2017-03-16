%load namelist;
binind =0;
blueind =0;
whiteind =0;
greenind =0;
redind =0;
layind =0;
placeind =0;
setind =0 ;
zeroind =0;
oneind =0;
twoind =0;
eightind=0;
fourind=0;
fiveind=0;
sevenind=0;
againind=0;
pleaseind=0;
soonind=0;
expr = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz][0123456789][asnp].align'; 
expr1= 'b[bgrw][abwi][abcdefghijklmnopqrstuvwxyz][0123456789][asnp].align'; %bin
expr2= '[blps]b[abwi][abcdefghijklmnopqrstuvwxyz][0123456789][asnp].align'; %blue
expr3= '[blps]w[abwi][abcdefghijklmnopqrstuvwxyz][0123456789][asnp].align'; %white
expr4= '[blps]g[abwi][abcdefghijklmnopqrstuvwxyz][0123456789][asnp].align'; %green
expr5= '[blps]r[abwi][abcdefghijklmnopqrstuvwxyz][0123456789][asnp].align'; %red
expr6= 'l[bgrw][abwi][abcdefghijklmnopqrstuvwxyz][0123456789][asnp].align'; %lay
expr7= 'p[bgrw][abwi][abcdefghijklmnopqrstuvwxyz][0123456789][asnp].align'; %place
expr8= 's[bgrw][abwi][abcdefghijklmnopqrstuvwxyz][0123456789][asnp].align'; %set
expr9 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz]0[asnp].align';  % zero
expr10 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz]1[asnp].align';  % one
expr11 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz]2[asnp].align';  % two
expr12 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz]8[asnp].align';  % eight
expr13 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz]4[asnp].align';  % four
expr14 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz]5[asnp].align';  % five
expr15 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz]7[asnp].align';  % seven
expr16 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz][0123456789]a.align'; % again
expr17 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz][0123456789]p.align'; % please
expr18 = '[blps][bgrw][abwi][abcdefghijklmnopqrstuvwxyz][0123456789]s.align'; % soon
for i = 1:1000
   j=w(i,1);
   video = predvis(i); % check this
   vid = video{1};
   
   framvec=  frameLocs(i);
   framevec=framvec{1};
       
   %for bin
   s=regexp(j,expr1);
   if isempty(s{1})      
   else
   binind = binind +1;
   a = floor(framevec(2)/1000);
   b = floor(framevec(3)/1000);
   c = b-a +1 ;
   binmatrix(binind, 1:c) = vid(1:c);
   end
   %for blue
   s=regexp(j,expr2);
   if isempty(s{1})      
   else
   blueind = blueind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(3)/1000);
   b = floor(framevec(4)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   bluematrix(blueind, 1:c2-c1+1) = vid(c1:c2);  
   end;
   
   %for white
   s=regexp(j,expr3);
   if isempty(s{1})      
   else
   whiteind = whiteind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(3)/1000);
   b = floor(framevec(4)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   whitematrix(whiteind, 1:c2-c1+1) = vid(c1:c2);  
   end;
   
   %for green
   s=regexp(j,expr4);
   if isempty(s{1})      
   else
   greenind = greenind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(3)/1000);
   b = floor(framevec(4)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   greenmatrix(greenind, 1:c2-c1+1) = vid(c1:c2);  
   end;   
   
   %for red
   s=regexp(j,expr5);
   if isempty(s{1})      
   else
   redind = redind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(3)/1000);
   b = floor(framevec(4)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   redmatrix(redind, 1:c2-c1+1) = vid(c1:c2);  
   end; 
   
   %for lay
   s=regexp(j,expr6);
   if isempty(s{1})      
   else
   layind = layind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(2)/1000);
   b = floor(framevec(3)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   laymatrix(layind, 1:c2-c1+1) = vid(c1:c2);  
   end;      
   
   %for place
   s=regexp(j,expr7);
   if isempty(s{1})      
   else
   placeind = placeind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(2)/1000);
   b = floor(framevec(3)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   placematrix(placeind, 1:c2-c1+1) = vid(c1:c2);  
   end;   

   %for set
   s=regexp(j,expr8);
   if isempty(s{1})      
   else
   setind = setind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(2)/1000);
   b = floor(framevec(3)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   setmatrix(setind, 1:c2-c1+1) = vid(c1:c2);  
   end; 
   
   %for zero
   s=regexp(j,expr9);
   if isempty(s{1})      
   else
   zeroind = zeroind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(6)/1000);
   b = floor(framevec(7)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   zeromatrix(zeroind, 1:c2-c1+1) = vid(c1:c2);  
   end;  
   
   %for one
   s=regexp(j,expr10);
   if isempty(s{1})      
   else
   oneind = oneind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(6)/1000);
   b = floor(framevec(7)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   onematrix(oneind, 1:c2-c1+1) = vid(c1:c2);  
   end; 
   
   %for two
   s=regexp(j,expr11);
   if isempty(s{1})      
   else
   twoind = twoind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(6)/1000);
   b = floor(framevec(7)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   twomatrix(twoind, 1:c2-c1+1) = vid(c1:c2);  
   end; 
   
      %for eight
   s=regexp(j,expr12);
   if isempty(s{1})      
   else
   eightind = eightind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(6)/1000);
   b = floor(framevec(7)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   eightmatrix(eightind, 1:c2-c1+1) = vid(c1:c2);  
   end; 
   
    %for four
   s=regexp(j,expr13);
   if isempty(s{1})      
   else
   fourind = fourind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(6)/1000);
   b = floor(framevec(7)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   fourmatrix(fourind, 1:c2-c1+1) = vid(c1:c2);  
   end;    
   
  %for five
   s=regexp(j,expr14);
   if isempty(s{1})      
   else
   fiveind = fiveind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(6)/1000);
   b = floor(framevec(7)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   fivematrix(fiveind, 1:c2-c1+1) = vid(c1:c2);  
   end;   
   
  %for seven
   s=regexp(j,expr15);
   if isempty(s{1})      
   else
   sevenind = sevenind +1;
   start = floor(framevec(2)/1000);
   a = floor(framevec(6)/1000);
   b = floor(framevec(7)/1000);
   c1 = a-start +1 ;
   c2 = b-start +1 ;
   sevenmatrix(sevenind, 1:c2-c1+1) = vid(c1:c2);  
   end;  
%    disp(i);
%   %for again
%    s=regexp(j,expr16);
%    if isempty(s{1})      
%    else
%    againind = againind +1;
%    start = floor(framevec(2)/1000);
%    a = floor(framevec(7)/1000);
%    b = floor(framevec(8)/1000);
%    c1 = a-start +1 ;
%    c2 = b-start +1 ;
%    againmatrix(againind, 1:c2-c1) = vid(c1:c2-1);  
%    end;  
%    
%   %for please
%    s=regexp(j,expr17);
%    if isempty(s{1})      
%    else
%    pleaseind = pleaseind +1;
%    start = floor(framevec(2)/1000);
%    a = floor(framevec(7)/1000);
%    b = floor(framevec(8)/1000);
%    c1 = a-start +1 ;
%    c2 = b-start +1 ;
%    pleasematrix(pleaseind, 1:c2-c1) = vid(c1:c2-1);  
%    end;  
%    
%   %for soon
%    s=regexp(j,expr18);
%    if isempty(s{1})      
%    else
%    soonind = soonind +1;
%    start = floor(framevec(2)/1000);
%    a = floor(framevec(7)/1000);
%    b = floor(framevec(8)/1000);
%    c1 = a-start +1 ;
%    c2 = b-start +1 ;
%    soonmatrix(soonind, 1:c2-c1) = vid(c1:c2-1);  
%    end;    
end  