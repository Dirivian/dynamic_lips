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
[Y,sizeData,SIL,sizeSil,numPix] = datamatrix(cropVid,labels);


%% Create Total Data Matrix and classification labels

%Concatinate into matrix
dataLen = sum(sizeData);
X = zeros(numPix,dataLen);
k1 = 1;
k3 = 0;
uni = [];
%first 36 cells of Y
for j = 1:36
    if sizeData(j) == 0
        continue
    else
        k2 = k1 + sizeData(j) - 1;
        X(:,k1:k2) = Y{j}(:,:);
        tags(k1:k2) = deal(j);
        k3 = k3 + 1;
        uni(k3,1) = j; %save unique j values
        uni(k3,2) = k2-k1; %save number of values at this j
        uni(k3,3) = k1; %save starting index for this phoneme
        k1 = k2+1;
    end
end
X(:,k1:end) = Y{end}(:,:); %last cell of Y

%% SVD

[U,S,V] = svd(X,'econ');


%% Create Classification Matrices

n1 = 1;
n2 = 1;
clear train trainTags test testTags
for j = 1:size(uni,1)
    %Check if enough points exist to classify
    if uni(j,2) < 5
        continue
    end
    
    q = randperm(uni(j,2));
    a = floor(0.75*uni(j,2));
    b = uni(j,2)-a;
    
    q1 = q(1:a) + uni(j,3)*ones(1,a);
    q2 = q(a+1:end) + uni(j,3)*ones(1,b);
    
    train(n1:n1+a-1,:) = V(q1,1:30);
    trainTags(n1:n1+a-1) = deal(uni(j,1));
    test(n2:n2+b-1,:) = V(q2,1:30);
    testTags(n2:n2+b-1,:) = deal(uni(j,1));
    
    n1 = n1 + a;
    n2 = n2 + b;
end



%% Classify

nb = NaiveBayes.fit(train,trainTags);
pre = nb.predict(test);

knnind = knnsearch(train,test);
acc2 = 100*sum(knnind==testTags)/length(knnind);


%compute accuracy
acc = 100*sum(pre==testTags)/length(pre);
disp(['Accuracy was ' num2str(acc) '%'])
disp(['Accuracy was ' num2str(acc2) '%'])


%% HMM




