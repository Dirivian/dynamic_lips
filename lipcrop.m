function [out] = lipcrop(lipread)
%Function to crop lip videos
%   Crops lip videos and returns cropped video
%
%INPUTS:
%lipread
%
%OUTPUTS:
%out = cropped video
%

for j = length(lipread):-1:1
    
        
    m = lipread(j).mask;

    xmin = m(:,1);
    ymin = m(:,2);
    xmax = m(:,1)+m(:,3);
    ymax = m(:,2)+m(:,4);
    cropxmin(j) = min(xmin);
    cropxmax(j) = max(xmax);
    cropymin(j) = min(ymin);
    cropymax(j) = max(ymax);
end

test2 = cropxmin;
test2(cropxmin~=0) = 0;
test2(cropxmin==0) = 1;
zerofind = find(test2);

for j = zerofind
    m = lipread(j).mask;
    for i = 1:74
        if norm(m(i,:))==0
            m(i,:) = m(40,:);
        end
    end
    xmin = m(:,1);
    ymin = m(:,2);
    xmax = m(:,1)+m(:,3);
    ymax = m(:,2)+m(:,4);
    cropxmin(j) = min(xmin);
    cropxmax(j) = max(xmax);
    cropymin(j) = min(ymin);
    cropymax(j) = max(ymax);
end
    

cxmax = max(cropxmax);
cxmin = min(cropxmin);
cymax = max(cropymax);
cymin = max(cropymin);



x = cxmin:cxmax;
y = cymin:cymax;

for k = length(lipread):-1:1
    edge = lipread(k).edge;
    out{k}(:,:,:) = edge(y,x,:);
end



% 
% for k = size(v,3):-1:1
%     clear x y 
%     [x,y] = find(v(:,:,k));
%     xmin(k) = min(x);
%     xmax(k) = max(x);
%     ymax(k) = max(y);
%     ymin(k) = min(y);
% end
% 
% xcrop = min(xmin)-10:max(xmax)+10;
% ycrop = min(ymin)-10:max(ymax)+10;
% 
% out = v(xcrop,ycrop,:);

end

