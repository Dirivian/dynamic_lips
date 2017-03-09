t=dir; % List of files in directory
g = t(3:1002,1); % relevant files
expr = '[bsd][bgrw][abc][abcdefghijklmnopqrstuvwxyz]3[s].align'; % pattern containing 3 and s near the end
for i=1:1000
    w=g(i).name; %file names
    s=regexp(w,expr);
    if isempty(s)
       
    else
         disp(i); % Find i value
      disp(w); 
    end
end