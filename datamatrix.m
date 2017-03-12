function [X,sizeData,SIL,sizeSil,numPix] = datamatrix(cropVid,labels)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


numPix = size(cropVid{1}(:,:,:),1)*size(cropVid{1}(:,:,:),2);

%Initialize Data Matrix
X = cell(37,1);

%Initialize counter for each data matrix
ind = zeros(38,1);

for j = 1:length(cropVid)
    thisLab = labels{j};
    thisVid = cropVid{j}(:,:,:);
    for k = 1:size(thisVid,3)
        %Get DM index of this phoneme
        thisInd = checkphoneme(thisLab(k));
        
        %If SIL, store in SIL array
        if thisInd == 0
            %Silence frames
            ind(38) = ind(38) + 1;
            thisFrame = thisVid(:,:,k);
            xframe = reshape(thisFrame,numPix,1);
            SIL(:,ind(38)) = xframe;
        else
            %this phoneme is a regular phoneme:
            
            %Increment to store in right place
            if thisInd <1
                thisInd = 1;
            end
            ind(thisInd) = ind(thisInd) + 1;
            
            %Get Frame to store
            thisFrame = thisVid(:,:,k);
            
            %Reshape frame
            xframe = reshape(thisFrame,numPix,1);
            
            %Store frame in corresponding DM
            X{thisInd}(:,ind(thisInd)) = xframe;
        end
        
    end
end

sizeData = ind(1:37);
sizeSil = ind(38);

end

