%% Automatic selection of scans centered at fovea
% Created by: Mousa Moradi, Ph.D. student UMASS AMHERST
% Updated 03/09/2022
%%
close all;clear all;clc;
%% Load annotated images for 366  volumes
D=dir;
dist_folder='B:\Macular cube data\allinone_g3\cube_all\Ann\centers\';
imageFolder = 'B:\Macular cube data\allinone_g3\cube_all\Ann\mytest\';
for n = 4:length(D)
    currD = D(n).name;
    currentfolder=fullfile(imageFolder, currD );
    imagefiles = dir(fullfile(currentfolder, '*.tif'));
nfiles = length(imagefiles);    % Number of files found
for k=1:nfiles
    currentfilename = imagefiles(k).name;
    currentimage = imread(currentfilename);
    imagePath= [imagefiles(k).folder ,imagefiles(k).name];
    img = currentimage;
    
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
[y_lim,len]=size(R);
% Get RGM values for ILM layer using ImageJ
match1=   R == 255 & G == 51  & B == 0; 
[x1, y1] = find(match1);
% Get coefficients of a line fit through the data.
coef1 = polyfit(y1, x1, 20);
% Create a new x axis with exactly 1000 points (or whatever you want).
x1Fit = linspace(min(y1), max(y1), len);
x1Fit=x1Fit';
% Get the estimated yFit value for each of those 1000 new x locations.
y1Fit = polyval(coef1 , x1Fit);
x(k,1)={y1Fit'};
% Fovea detection
ilm_x=x{k,1};
L=length(ilm_x);
fovea_x(k,1)=median(find(ilm_x==max(ilm_x(950:2150))));
fovea_x(k,1)=round(fovea_x(k,1))
end
%%
min(fovea_x)
centered_scan_index= find(fovea_x==min(fovea_x))
i=centered_scan_index;
S = natsortfiles(imagefiles);
nfiles = length(S);    % Number of files found
for k=i-7:i+7
    thisFullFileName = fullfile(S(k).folder, S(k).name);
    fprintf('Processing image %d of %d : %s...\n', k, nfiles, thisFullFileName);
    out=regexp(thisFullFileName,'\','split');
    newName = fullfile(dist_folder, sprintf( '%s_%d.tif', char(out(7)),k ) );
    copyfile( thisFullFileName, newName);    
end

end
