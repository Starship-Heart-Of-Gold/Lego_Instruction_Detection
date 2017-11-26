close all


LegoIn = imread('Lego10703-1.jpg');

tic;
Test = RegionPropsBoxCrop(LegoIn);
toc;

RectIllustrCrop = insertShape(LegoIn, 'Rectangle', Test(1,:), 'LineWidth', 5,'color','green');

for k = 1:length(Test(:,1))
    
RectIllustrCrop = insertShape(RectIllustrCrop, 'Rectangle', Test(k,:), 'LineWidth', 5,'color','green');
    
end

% figure()
% imshow(RectIllustrCrop)

Crop = imcrop(LegoIn,Test);
Crop = rgb2gray(Crop);

Crop = imcrop(Crop,[140 240 180 280]);

% GaussFilter = imgaussfilt(Crop,5);
% 
% Crop = edge(im2bw(Crop));
ocrTest = ocr(Crop);
ocrTest.Text