%Gaussian filter using MATLAB built_in function
%Read an Image
Img = imread('qazi.jpg');
A = imnoise(Img,'Gaussian',0.04,0.003);
%Image with noise


H = fspecial('Gaussian',[9 9],1.76);
GaussF = imfilter(A,H);
subplot(1,2,1),imshow(GaussF);
subplot(1,2,2),imshow(A);
