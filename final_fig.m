
figure(1);   set(gcf,'DefaultAxesFontSize',11);
  mov =3;
   frames = [ 44 46 48 50 52 54];
   %frames = [ 34 36 38 40 42 44];
   frames = frames-4;
  
      h1 = subplot(4,3,4); 
     currentframe = 255* lipcolor(:,:,frames(1),mov); 
     imshow(currentframe);title('Color Classification')
    h2 =  subplot(4,3,1); 
     imshow(lipread(mov).mov(:,:,:,frames(1))); title('Original Movie Frame')
     
      subplot(4,3,5); 
     currentframe = 255* lipcolor(:,:,frames(2),mov); 
     imshow(currentframe);title('Color Classification')
     subplot(4,3,2); 
     imshow(lipread(mov).mov(:,:,:,frames(2))); title('Original Movie Frame')
     
     h5= subplot(4,3,6); 
     currentframe = 255* lipcolor(:,:,frames(3),mov); 
     imshow(currentframe);title('Color Classification')
    h6= subplot(4,3,3); 
     imshow(lipread(mov).mov(:,:,:,frames(3))); title('Original Movie Frame')
     
     h3 =  subplot(4,3,10); 
     currentframe = 255* lipcolor(:,:,frames(4),mov); 
     imshow(currentframe);title('Color Classification')
    h4 = subplot(4,3,7); 
     imshow(lipread(mov).mov(:,:,:,frames(4))); title('Original Movie Frame')
     
       subplot(4,3,11); 
     currentframe = 255* lipcolor(:,:,frames(5),mov); 
     imshow(currentframe);title('Color Classification')
     subplot(4,3,8); 
     imshow(lipread(mov).mov(:,:,:,frames(5))); title('Original Movie Frame')
     
    h7=  subplot(4,3,12); 
     currentframe = 255* lipcolor(:,:,frames(6),mov); 
     imshow(currentframe);title('Color Classification')
   h8=  subplot(4,3,9); 
     imshow(lipread(mov).mov(:,:,:,frames(6))); title('Original Movie Frame')
     

     p1= get(h1,'pos'); 
p2= get(h2,'pos'); 
p3= get(h3,'pos'); 
p4= get(h4,'pos'); 
p5= get(h5,'pos'); 
p6= get(h6,'pos'); 
p7= get(h7,'pos'); 
p8= get(h8,'pos'); 


p1(1) = p1(1) + .1; 
p2(1) = p2(1) + .1;
p3(1) = p3(1) + .1;
p4(1) = p4(1) + .1;

p5(1) = p5(1) - .1;
p6(1) = p6(1) - .1;
p7(1) = p7(1) - .1; 
p8(1) = p8(1) - .1;


set(h1, 'pos',p1); 
set(h2, 'pos',p2); 
set(h3, 'pos',p3); 
set(h4, 'pos',p4); 
set(h5, 'pos',p5); 
set(h6, 'pos',p6); 
set(h7, 'pos',p7); 
set(h8, 'pos',p8); 

%%


figure(1);   set(gcf,'DefaultAxesFontSize',11);
  mov =1;
   frames = [ 48 49 50 51 52 54];
   %frames = [ 34 36 38 40 42 44];
   frames = frames-7;
  
      h1 = subplot(4,3,4); 
     currentframe = uint8(255*lipread(mov).edge(:,:,frames(1))) ;
     imshow(currentframe);title('Canny Edge Detection')
    h2 =  subplot(4,3,1); 
     imshow(lipread(mov).mov(:,:,:,frames(1))); title('Original Movie Frame')
     
      subplot(4,3,5); 
    currentframe = uint8(255*lipread(mov).edge(:,:,frames(2))) ; 
     imshow(currentframe);title('Canny Edge Detection')
     subplot(4,3,2); 
     imshow(lipread(mov).mov(:,:,:,frames(2))); title('Original Movie Frame')
     
     h5= subplot(4,3,6); 
      currentframe = uint8(255*lipread(mov).edge(:,:,frames(3))) ;
     imshow(currentframe);title('Canny Edge Detection')
    h6= subplot(4,3,3); 
     imshow(lipread(mov).mov(:,:,:,frames(3))); title('Original Movie Frame')
     
     h3 =  subplot(4,3,10); 
      currentframe = uint8(255*lipread(mov).edge(:,:,frames(4))) ;
     imshow(currentframe);title('Canny Edge Detection')
    h4 = subplot(4,3,7); 
     imshow(lipread(mov).mov(:,:,:,frames(4))); title('Original Movie Frame')
     
       subplot(4,3,11); 
      currentframe = uint8(255*lipread(mov).edge(:,:,frames(5))) ;
     imshow(currentframe);title('Canny Edge Detection')
     subplot(4,3,8); 
     imshow(lipread(mov).mov(:,:,:,frames(5))); title('Original Movie Frame')
     
    h7=  subplot(4,3,12); 
     currentframe = uint8(255*lipread(mov).edge(:,:,frames(6))) ;
     imshow(currentframe);title('Canny Edge Detection')
   h8=  subplot(4,3,9); 
     imshow(lipread(mov).mov(:,:,:,frames(6))); title('Original Movie Frame')
     

     p1= get(h1,'pos'); 
p2= get(h2,'pos'); 
p3= get(h3,'pos'); 
p4= get(h4,'pos'); 
p5= get(h5,'pos'); 
p6= get(h6,'pos'); 
p7= get(h7,'pos'); 
p8= get(h8,'pos'); 


p1(1) = p1(1) + .1; 
p2(1) = p2(1) + .1;
p3(1) = p3(1) + .1;
p4(1) = p4(1) + .1;

p5(1) = p5(1) - .1;
p6(1) = p6(1) - .1;
p7(1) = p7(1) - .1; 
p8(1) = p8(1) - .1;


set(h1, 'pos',p1); 
set(h2, 'pos',p2); 
set(h3, 'pos',p3); 
set(h4, 'pos',p4); 
set(h5, 'pos',p5); 
set(h6, 'pos',p6); 
set(h7, 'pos',p7); 
set(h8, 'pos',p8); 
     

%%

figure(1);   set(gcf,'DefaultAxesFontSize',11);
  mov =3;
   frames = [ 48 49 50 51 52 54];
   %frames = [ 34 36 38 40 42 44];
   frames = frames-4;
  
      h1 = subplot(4,3,4); 
     currentframe = uint8(255*lipread(mov).sparse(:,:,frames(1))) ;
     imshow(currentframe);title('DMD Results')
    h2 =  subplot(4,3,1); 
     imshow(lipread(mov).mov(:,:,:,frames(1))); title('Original Movie Frame')
     
      subplot(4,3,5); 
    currentframe = uint8(255*lipread(mov).sparse(:,:,frames(2))) ; 
     imshow(currentframe);title('DMD Results')
     subplot(4,3,2); 
     imshow(lipread(mov).mov(:,:,:,frames(2))); title('Original Movie Frame')
     
     h5= subplot(4,3,6); 
      currentframe = uint8(255*lipread(mov).sparse(:,:,frames(3))) ;
     imshow(currentframe);title('DMD Results')
    h6= subplot(4,3,3); 
     imshow(lipread(mov).mov(:,:,:,frames(3))); title('Original Movie Frame')
     
     h3 =  subplot(4,3,10); 
      currentframe = uint8(255*lipread(mov).sparse(:,:,frames(4))) ;
     imshow(currentframe);title('DMD Results')
    h4 = subplot(4,3,7); 
     imshow(lipread(mov).mov(:,:,:,frames(4))); title('Original Movie Frame')
     
       subplot(4,3,11); 
      currentframe = uint8(255*lipread(mov).sparse(:,:,frames(5))) ;
     imshow(currentframe);title('DMD Results')
     subplot(4,3,8); 
     imshow(lipread(mov).mov(:,:,:,frames(5))); title('Original Movie Frame')
     
    h7=  subplot(4,3,12); 
     currentframe = uint8(255*lipread(mov).sparse(:,:,frames(6))) ;
     imshow(currentframe);title('DMD Results')
   h8=  subplot(4,3,9); 
     imshow(lipread(mov).mov(:,:,:,frames(6))); title('Original Movie Frame')
     

     p1= get(h1,'pos'); 
p2= get(h2,'pos'); 
p3= get(h3,'pos'); 
p4= get(h4,'pos'); 
p5= get(h5,'pos'); 
p6= get(h6,'pos'); 
p7= get(h7,'pos'); 
p8= get(h8,'pos'); 


p1(1) = p1(1) + .1; 
p2(1) = p2(1) + .1;
p3(1) = p3(1) + .1;
p4(1) = p4(1) + .1;

p5(1) = p5(1) - .1;
p6(1) = p6(1) - .1;
p7(1) = p7(1) - .1; 
p8(1) = p8(1) - .1;


set(h1, 'pos',p1); 
set(h2, 'pos',p2); 
set(h3, 'pos',p3); 
set(h4, 'pos',p4); 
set(h5, 'pos',p5); 
set(h6, 'pos',p6); 
set(h7, 'pos',p7); 
set(h8, 'pos',p8); 

%%

figure(1);   set(gcf,'DefaultAxesFontSize',11);
  mov =3;
   frames = [ 48 49 50 51 52 54];
   %frames = [ 34 36 38 40 42 44];
   frames = frames-7;
  
      h1 = subplot(4,3,4); 
     currentframe = uint8(255*lipread(mov).ACmask(:,:,frames(1))) ;
     imshow(currentframe);title('Active Contour Results')
    h2 =  subplot(4,3,1); 
     imshow(lipread(mov).mov(:,:,:,frames(1))); title('Original Movie Frame')
     
      subplot(4,3,5); 
    currentframe = uint8(255*lipread(mov).ACmask(:,:,frames(2))) ; 
     imshow(currentframe);title('Active Contour Results')
     subplot(4,3,2); 
     imshow(lipread(mov).mov(:,:,:,frames(2))); title('Original Movie Frame')
     
     h5= subplot(4,3,6); 
      currentframe = uint8(255*lipread(mov).ACmask(:,:,frames(3))) ;
     imshow(currentframe);title('Active Contour Results')
    h6= subplot(4,3,3); 
     imshow(lipread(mov).mov(:,:,:,frames(3))); title('Original Movie Frame')
     
     h3 =  subplot(4,3,10); 
      currentframe = uint8(255*lipread(mov).ACmask(:,:,frames(4))) ;
     imshow(currentframe);title('Active Contour Results')
    h4 = subplot(4,3,7); 
     imshow(lipread(mov).mov(:,:,:,frames(4))); title('Original Movie Frame')
     
       subplot(4,3,11); 
      currentframe = uint8(255*lipread(mov).ACmask(:,:,frames(5))) ;
     imshow(currentframe);title('Active Contour Results')
     subplot(4,3,8); 
     imshow(lipread(mov).mov(:,:,:,frames(5))); title('Original Movie Frame')
     
    h7=  subplot(4,3,12); 
     currentframe = uint8(255*lipread(mov).ACmask(:,:,frames(6))) ;
     imshow(currentframe);title('Active Contour Results')
   h8=  subplot(4,3,9); 
     imshow(lipread(mov).mov(:,:,:,frames(6))); title('Original Movie Frame')
     

     p1= get(h1,'pos'); 
p2= get(h2,'pos'); 
p3= get(h3,'pos'); 
p4= get(h4,'pos'); 
p5= get(h5,'pos'); 
p6= get(h6,'pos'); 
p7= get(h7,'pos'); 
p8= get(h8,'pos'); 


p1(1) = p1(1) + .1; 
p2(1) = p2(1) + .1;
p3(1) = p3(1) + .1;
p4(1) = p4(1) + .1;

p5(1) = p5(1) - .1;
p6(1) = p6(1) - .1;
p7(1) = p7(1) - .1; 
p8(1) = p8(1) - .1;


set(h1, 'pos',p1); 
set(h2, 'pos',p2); 
set(h3, 'pos',p3); 
set(h4, 'pos',p4); 
set(h5, 'pos',p5); 
set(h6, 'pos',p6); 
set(h7, 'pos',p7); 
set(h8, 'pos',p8); 
   
 