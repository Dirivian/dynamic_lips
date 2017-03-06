

for i=1:length(lipread)
[aa1, bb1,numFrames] = size(lipread(i).graymov); 
dt = 1/25; 
DMD_length = 10; %can change 
jj = numFrames-DMD_length+1; 
Xdmd = zeros(aa1*bb1,jj); 
Xsparse = zeros(aa1*bb1,jj); 
Xlowrank = zeros(aa1*bb1,jj); 
Xsparsereshape = zeros(aa1,bb1,jj); 



for j = 1:jj
startpoint = j;
% if j ~= jj
X1_1 = zeros(aa1*bb1,DMD_length-1);
X2_1 = zeros(aa1*bb1,DMD_length-1);
for k=1:size(X1_1,2); 
    X1_1(:,k) = reshape(lipread(i).graymov(:,:,startpoint+k-1),aa1*bb1,1); 
    X2_1(:,k) = reshape(lipread(i).graymov(:,:,startpoint+k),aa1*bb1,1); 
end
% do DMD 
r = DMD_length-1;
[phi,omega,lambda,b,X_dmd] = DMD(X1_1,X2_1,r,dt); 

% generate background and foreground streams

cutoff = 1; %can change this
omega_fore = abs(omega);  %get abs val of eigenvalues
omega_fore(omega_fore<cutoff) = 0;  %set eigenvalues below threshold to zero
fore_j = find(omega_fore); 
omega_back = abs(omega); 
omega_back(omega_back>cutoff) = 0; 
back_j = find(omega_back); 



X_lowrank = zeros(aa1*bb1,size(X1_1,2)); 
t = (0:size(X1_1,2)-1)*dt; 
for i=1:length(back_j)
    ind = back_j(i);
    X_lowrank = X_lowrank+b(ind)*phi(:,ind)*exp(omega(ind).*t);
end
X_sparse = X_dmd-abs(X_lowrank); 
R = X_sparse; 
R(R>0) = 0; 
X_lowrank = R+abs(X_lowrank); 
X_sparse = X_sparse-R; 
recon = 7;
Xdmd(:,j) = X_dmd(:,recon); %can change
Xsparse(:,j) = X_sparse(:,recon); 
    
test1 = Xsparse(:,j); 
test1 = uint8(real(test1));
avg = mean(test1); 
shrinkcut = 1; %can mess with this
test1(test1<shrinkcut*avg) = .1*test1(test1<shrinkcut*avg);
growcut = 1; %can mess with this
test1(test1>growcut*avg) = 5*test1(test1>growcut*avg);
 Xsparse(:,j) = test1; 

Xlowrank(:,j) = X_lowrank(:,recon); 
% Xsparsereshape(:,:,j) = uint8(reshape(Xsparse(:,j),aa1,bb1));
% Xsparsereshape(:,:,j) = imadjust(Xsparsereshape(:,:,j),[.4,.6]);
Xsparsereshape(:,:,j) = uint8(reshape(Xsparse(:,j),aa1,bb1)).*mask_initial; 

%note: if want:
%can make it so we get full reconstruction by taking more frames for
%intial/last reconstruction 

end
lipread(i).sparse = Xsparsereshape; 


end









    
    