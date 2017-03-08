%note: backup = backup2
%clear all;
function [lipread] = final582(goodmov,usegray,useAC,useedge,useDMD)

 %close all;
parent_dir = 'C:\Users\Pc\Documents\MATLAB\final 582'; %parent directory
target_dir = 's1'; %folder with movies to process
cd(target_dir); %change to target folder
movie_list = dir('*.mpg');  %get movies in folder

numFiles = length(movie_list); 
% goodmov = [1,2,3,6,8,9]; %movies with same approximate head position
% mask_initial = zeros(288,368); 
% aa= 200; bb= 240; cc = 130; dd = 185; 
% mask_initial(aa:bb,cc:dd) = 1; 
% mask_initial = uint8(mask_initial); 

%goodmov = 2:3; %movies you want
MouthDetect = vision.CascadeObjectDetector('Mouth','MergeThreshold',16); 

lipread(length(goodmov)).mov = uint8(zeros(268,368,3,74));


for i=1:length(goodmov); %load the movies
    cur = goodmov(i); 
    
obj=VideoReader(movie_list(cur).name); 
vidFrames = read(obj);
[X,Y,three,numFrames] = size(vidFrames); 
lipread(i).name = movie_list(i).name; 
lipread(i).mov = vidFrames; 
%optional outputs below
if useAC ==1
lipread(i).ACmask = zeros(X,Y,numFrames);  %active contour
end
if usegray ==1
lipread(i).graymov = uint8(zeros(X,Y,numFrames));  %save grayscale movie
end
%optional outputs above
if useedge ==1
lipread(i).edge = uint8(zeros(X,Y,numFrames)); 
end
lipread(i).mask = zeros(74,4);



for j=1:numFrames %do the processing 
    
    currentframe = lipread(i).mov(:,:,:,j); 
    BB = step(MouthDetect,currentframe);
    if size(BB,1)>1
        testmask = BB(:,2)+BB(:,4); 
        testmask(testmask>270) = 0; %filter out erroneously high values (can change)
        [~,index] = max(testmask);
    
    else
        index=1;
    end
    if size(BB,1) ==0
        disp('Could Not Detect Mouth Region') %no results if you get this
        continue
    end
    lipread(i).mask(j,:) = BB(index,:); %field for mask coordinates
    
    mask_initial = zeros(288,368);
    mask_initial(BB(index,2):BB(index,2)+BB(index,4),BB(index,1):BB(index,1)+BB(index,3)) = 1;
    mask_initial = uint8(mask_initial); 
    

    currentgrayscale = rgb2gray(currentframe); 
    
    %if need grayscale uncomment next line 
    if usegray==1
    lipread(i).graymov(:,:,j) = currentgrayscale; %save grayscale movie
    end
    %(need graymov for DMD and AC)
    
    %AC code below (not good)
    if useAC ==1
     mask = activecontour(currentgrayscale,mask_initial,500,'edge');
     lipread(i).ACmask(:,:,j) = mask; 
    end
%AC code above
     
     
%code to increase contrast of part of image (doesn't improve results: youll detect the edges of box) 
% curim = currentgrayscale;
% curim = curim(aa:bb,cc:dd);
% curim = imadjust(curim); 
% currentgrayscale(aa:bb,cc:dd) = curim; 


%currentgrayscale = imadjust(currentgrayscale,[.2,.8]); %can mess with this
if useedge ==1
threshfac = 9; %can mess with this
[~,threshold] = edge(currentgrayscale,'Canny');  %canny is best? 
mask = edge(currentgrayscale,'Canny',threshfac*threshold); %can mess with this

% [~,threshold] = edge(currentgrayscale,'Sobel'); 
% mask = edge(currentgrayscale,'Sobel',.8*threshold); %can mess with this

% [~,threshold] = edge(currentgrayscale,'Prewitt'); 
% mask = edge(currentgrayscale,'Prewitt',.8*threshold); %can mess with this


currentedge = uint8(mask).*mask_initial; 
minpoints = 80; %can mess with this (set to something low if you don't want more features)
k = find(currentedge); 
counter = 0; %can mess with this

    while (length(k)<minpoints && counter<50) %for lowering threshold if too few points detected (can change bounds)
        counter = counter+1;
        threshfac = threshfac-.15; %can mess with this
        mask = edge(currentgrayscale,'Canny',threshfac*threshold); %can mess with this
currentedge = uint8(mask).*mask_initial; 
k = find(currentedge); 
    end
    %counter
    lipread(i).edge(:,:,j) = currentedge; 
end


end
end
cd(parent_dir) 
if useDMD ==1
hw4_582 %if you want DMD (takes longer, not very good)
end

end
%can try doing the color classification. (in lab colorspace)