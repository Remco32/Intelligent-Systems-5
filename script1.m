function [Fx, Fy] = script1(image)
I = imread(image);
F = im2double(I);
hx = [-1, 0, 1]; % x derivative
hy = [-1 ;0  ;1]; % y derivative

Fx = imfilter(F,hx,'replicate','conv');
Fy = imfilter(F,hy, 'replicate', 'conv');

h2 = [0,1,0;1,1,1;0,1,0]; %Dilation
F3 = imdilate(F,h2); %Dilation


subplot(2,4,1), imshow(image);
xlabel('input')

subplot(2,4,2), imshow(Fx);
xlabel('x derivative')

subplot(2,4,3), imshow(Fy);
xlabel('y derivative')

subplot(2,4,4), imshow(F3);
xlabel('dilation')

subplot(2,4,5), imshow(imnoise(I,'poisson'));
xlabel('input w/ poisson noise')


end