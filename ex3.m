
I = imread('chest.pgm');
F = im2double(I);
BW = edge(F, 'canny');
figure, imshow(BW);

BW = edge(F, 'canny', [0.5,0.8],1);
figure, imshow(BW);

BW = edge(F, 'canny', [0.01,0.8],1);
figure, imshow(BW);

BW = edge(F, 'canny', [0.01,0.1],1);
figure, imshow(BW);

BW = edge(F, 'canny', [0.01,0.1],3);
figure, imshow(BW);

BW = edge(F, 'canny', [0.00000000000001,0.1],5);
figure, imshow(BW);

BW = edge(F, 'canny', [0.00000000000001,0.1],7);
figure, imshow(BW);
