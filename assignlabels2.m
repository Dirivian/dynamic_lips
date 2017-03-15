function [ labels ] = assignlabels2(cropvid,frameLocs,words)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
%Inputs: 
%cropped videos (struct)
%frameLocs
% words
% 
% 
% Outputs:
% labels: cell array of cells containing the phoneme at each frame
%
%Begin Function

numVids = length(cropvid);

labels = cell(numVids,1);

for k = numVids:-1:1
    v = cropvid{k};
    fL = floor(frameLocs{k}/1000);
    lab = cell(size(v,3),1);
    
    for j = 1:length(fL)-1
        %Break this word into phonemes
        ph = assignphoneme(words{k}(j));
        
        %Get number of phonemes in this word
        numPh = length(ph);
        
        %get frame indices for this word to be distributed accross
        x1 = fL(j);
        x2 = fL(j+1);
        
        %number of frames per phoneme
        nf = round((x2-x1)/numPh);
        xprev = x1;
        if xprev == 0
            xprev = 1; %make sure 0 index isnt called
        end
        
        for i = 1:numPh-1
            xnext = xprev + nf; %overwrite next
            
            for ii = xprev:xnext-1
                lab{ii} = ph{i};
            end
            
            xprev = xnext; %overwrite prev
        end
        
        for ii = xprev:size(v,3)
            lab{ii} = ph{end};
        end
        
    end
    labels{k} = lab; %store in output
    clear lab %clear temp variable
end

        
    



    

end


