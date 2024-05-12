clc;clear;close all;
img = imread('rocksInSea.jpg');
img = rgb2gray(img);
img1 = img .* 2;
imshow(img);
figure;
imhist(img);
figure;
imshow(img1);
figure;
imhist(img1);

%%
clc;clear;close all;
img = imread('rocksInSea.jpg');
img = rgb2gray(img);
[h,w] = size(img);
img1 = zeros(h*2,w*2,'uint8');
for j = 1 : h
    for i = 1 : w
        img1(j*2,i*2) = img(j,i);
        img1(j*2-1,i*2) = img(j,i);
        img1(j*2,i*2-1) = img(j,i);
        img1(j*2-1,i*2-1) = img(j,i);
    end
end
imshow(img);figure;imshow(img1);

