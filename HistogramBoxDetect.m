close all
clear 

LegoIn = imread(fullfile('Lego-Project','Scripts','Images','Lego_2.jpg'));

Test = Segmentation(LegoIn);



Test = extractStepDigit(LegoIn,Test);


figure(); imshow(LegoIn)
n = size(Test);
n = n(1);

for k = 1:n
    
RectIllustrCrop = rectangle('Position',Test(k,:),'LineWidth',2);
 set(RectIllustrCrop,'EdgeColor',[.75 0 0]);   
hold on
end


