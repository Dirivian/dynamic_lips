% Required functions:

% lipcrop
% assignlabels
% assignphoneme

%Required variables to already be in workspace:
% 
% frameLocs
% words


%Begin Script:

%load lipread 
%lipread = rmfield(lipread,'mov');
%load words_and_frameLocs

% load lipcolorhalf1
% for i =1:500
% lipread(i).edge = lipcolor(:,:,:,i);
% end
% load lipcolorhalf2
% for i =501:1000
%     lipread(i).edge = lipcolor(:,:,:,i-500); 
% end

clearvars -except lipread frameLocs words
%% Crop, Assign Labels, create individual data matrices

%Crop videos based on contour mask
cropVid = lipcrop(lipread);

%Assign labels to each frame
labels = assignlabels2(cropVid,frameLocs,words);

%Sort and create data arrays
[X,tags,vinds] = hmmdata(cropVid,labels);
numPix = size(X,1);
numVids = size(X,2);

%% SVD

[U,S,V] = svd(X,'econ');


%% Create Classification Matrices

q = randperm(numVids);
qind = round(numVids*0.75);
q1 = q(1:qind);
q2 = q(qind+1:end);

trainData = V(q1,1:30);
testData = V(q2,1:30);
trainTags = tags(q1)';
testTags = tags(q2)';

hmmNBdata = V(:,1:30);


%% Classify

nb = NaiveBayes.fit(trainData,trainTags);
pre = nb.predict(testData);

preHMM = nb.predict(hmmNBdata);

predvis = cell(length(cropVid),1);

for j = 1:length(cropVid)
    predvis{j} = preHMM(vinds{j});
end
    


%compute accuracy
acc = 100*sum(pre==testTags)/length(pre);
disp(['Accuracy was ' num2str(acc) '%'])

% knnind = knnsearch(train,test);
% acc2 = 100*sum(knnind==testTags)/length(knnind);
% disp(['Accuracy was ' num2str(acc2) '%'])

%% HMM




