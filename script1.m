I = imread('chest.pgm');
F = im2double(I);
hx = [-1, 0, 1]; % x derivative
hy = [-1 ;0  ;1]; % y derivative
F2 = imfilter(F,hx,'replicate','conv');
h2 = [0,1,0;1,1,1;0,1,0]; %Dilation
F3 = imdilate(F,h2); %Dilation