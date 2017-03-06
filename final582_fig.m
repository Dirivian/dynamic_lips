%% look at original movie
figure(2); 
testmov = 1; %movie to test
 numFrames = size(lipread(testmov).mov,4);
 
 for i=1:numFrames
     currentframe = lipread(testmov).mov(:,:,:,i); 
     imshow(currentframe); 
     hold on; rectangle('Position',[130,200,55,40]);  hold off; 
     %waitforbuttonpress
     pause(0.01); 
 end
 %% look at gray mov
 figure(1); 
testmov = 1; %movie to test
 numFrames = size(lipread(testmov).mov,4);
 
 for i=1:numFrames
     currentframe = uint8(lipread(testmov).graymov(:,:,i)); 
     currentframe = imadjust(currentframe,[.4,.6]); 
     imshow(currentframe); pause(0.01); 
 end
 
%% test initial guesss for rectangle 

currentframe = lipread(testmov).mov(:,:,:,10); 
imshow(currentframe); 
hold on; rectangle('Position',[130,200,60,40]); %note need to rotate rectangle when masking mask

%% test initial mask 
figure(1); 
testmov = 1; %movie to test
 numFrames = size(lipread(testmov).mov,4);
 
 for i=1:numFrames
     currentframe = lipread(testmov).mov(:,:,:,i); 
     currentframe = rgb2gray(currentframe); 
     currentframe = currentframe.*mask_initial;
     imshow(currentframe); 
     %hold on; rectangle('Position',[130,200,55,40]);  hold off; 
     %waitforbuttonpress
     pause(0.01); 
 end
 
 %% test active contour mask (hint: it's trash)
 testmov = 1;
 for i =1:numFrames
     currentframe = lipread(testmov).ACmask(:,:,i); 
     currentframe = lipread(testmov).graymov(:,:,i).*currentframe;
     imshow(uint8(currentframe));
     pause(0.01); 
     waitforbuttonpress
 end
 
  %% test edge mask (best)
  figure(1);
 testmov = 1:length(lipread);
 for j=1:length(testmov)
     
 for i =1:numFrames
     currentframe = uint8(255*lipread(j).edge(:,:,i)); 
     subplot(1,2,1); 
     imshow(currentframe);
     subplot(1,2,2); 
     currentframe = lipread(j).mov(:,:,:,i); 
     imshow(currentframe);
     pause(0.01); 
     %waitforbuttonpress
 end
 end
 
 %% DMD 
 figure(1); 
 testmov = 1;
  for i =1:size(lipread(testmov).sparse,3)
     currentframe = lipread(testmov).sparse(:,:,i); 
     subplot(2,1,1)
     imshow(uint8(currentframe));
     subplot(2,1,2); 
     currentframe = lipread(testmov).mov(:,:,:,i+recon); 
     imshow(currentframe);
     pause(0.01); 
     waitforbuttonpress
 end
 