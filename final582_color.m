function [lipcolor] = final582_color(lipread)
%clearvars -except lipread
cform = makecform('srgb2lab');
lipcolor = zeros(288,368,74,length(lipread),'uint8');
for i=1:length(lipread)
    
    
    for j = 1:74
        
        myBB = lipread(i).mask(j,:);
        colormask=uint8(zeros(288,368));
        
%          mask_initial = zeros(288,368,3);
%     mask_initial(myBB(2):myBB(2)+myBB(4),myBB(1):myBB(1)+myBB(3),1:3) = 1;
%     mask_initial = uint8(mask_initial);
if lipread(i).mask(j,:) == [0,0,0,0]
    disp('no initial mask') %no results if this pops up
    continue
end
      
        im = lipread(i).mov(myBB(2):myBB(2)+myBB(4),myBB(1):myBB(1)+myBB(3),:,j);
        lab_im = applycform(im,cform);
        ab = double(lab_im(:,:,2:3));
        nrows = size(ab,1); 
        ncols = size(ab,2); 
        ab = reshape(ab,nrows*ncols,2); 
        
        nColors = 4; %number of clusters
        %maybe add some code to decide how many clusters to use? 
        
        [cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
            'Replicates',3,'EmptyAction','drop'); %get 4 clusters, repeat 3 times. use square euclidean distance.
        [~,lipindex] = max(cluster_center(:,1)); 
        [~,lipindex2] = min(cluster_center(:,2));
        if lipindex ~=lipindex2
            disp('Warning: ambiguous lip region') %just a warning, can ignore
        end
       pixel_labels = reshape(cluster_idx,nrows,ncols); 
       
       pixel_labels(pixel_labels~=lipindex) = 0;
       pixel_labels = pixel_labels/lipindex;
       colormask(myBB(2):myBB(2)+myBB(4),myBB(1):myBB(1)+myBB(3)) = pixel_labels;
       lipcolor(:,:,j,i) = colormask; 
      
%        segmented_images = cell(1,nColors);
%        rgb_label = repmat(pixel_labels,[1 1 3]);
% for k = 1:nColors
%     color = im;
%     color(rgb_label ~= k) = 0;
%     segmented_images{k} = color;
% end
    end
end

%note lipcolor is not saved in lipread but it is easy to do this if we need
%to.
