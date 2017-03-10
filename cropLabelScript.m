% This script will take the 'lipread' struct as an input
% It will crop each video in 'lipread' then it will assign
% phoneme labels to each frame in each video in 'lipread'

% Required functions:

% lipcrop
% assignlabels
% assignphoneme


%Required variables to already be in workspace:
% 
% frameLocs
% words

cropVid = lipcrop(lipread);
labels = assignlabels(cropVid,frameLocs,words);

%This will result in a cell array called 'labels' which has the label for
%each frame in it.  

%The following will rearrange each frame and create the data matrix.  Might
%need to be sorted by phoneme
%uncomment to use

% kk = 0;
% numPix = size(cropVid{1}(:,:,:),1)*size(cropVid{1}(:,:,:),2);
% X = zeros(numPix,length(cropVid));
% 
% for j = 1:length(cropVid)
%     thisVid = cropVid{j}(:,:,:);
%     for k = 1:size(thisVid,3)
%         kk = kk + 1;
%         thisFrame = thisVid(:,:,k);
%         xframe = reshape(thisFrame,numPix,1);
%         X(:,kk) = xframe;
%     end
% end
% 


