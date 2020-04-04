%% Title: Ameliorated Richardson–Lucy Algorithm for Image Deblurring

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen. 
% "Faster Deblurring for Digital Images Using an Ameliorated Richardson–Lucy Algorithm." 
% IEIE Transactions on Smart Processing and Computing, vol. 7, no. 4, (2018): pp. 289-295. DOI: 10.5573/IEIESPC.2018.7.4.289
%% INPUTS
% g --> is a given blurry image
% itr -- > number of iterations

%% OUTPUT
% ARL --> deblurred image


%% Starting implementation %%
clear all; close all; clc;

g = im2double(imread('1.jpg'));
figure;imshow(g);title('input');

%% Generate a kernel
H = fspecial('gaussian',[3 3], .5);

itr=10;
tic; ARL=ARL(g, H, itr); toc;
figure;imshow(ARL); title('RL Proposed');
% imwrite(ARL,'1_ARL.jpg');