% Bartlomiej Borzyszkowski
% PG ETI AiR KSDiR Grupa 2.
% Tested on MATLAB R2015b
% Date of project: 11/2018
% http://www.github.com/borzyszkowski



% This program only detects faces that can fit inside a 27x18 window.


clear all;
close all;
clc;

if ~exist('main.m')
    fprintf ('Main program file could not be located.\n');
    return;
end

if ~exist('./data/gabor.mat','file')    
    run ('include/createGabor.m');
end
if ~exist('./data/net.mat','file')
    run ('include/menuCreateNetwork.m');
end
if ~exist('./data/imgdb.mat','file')
    run ('include/menuLoadImages.m');
end

while (1==1)
    choice=menu('Face Detection',...
                'Create Database',...
                'Create Network',...
                'Train Network',...
                'Test on Photos',...
                'Exit');
    if (choice ==1)
        run ('include/menuLoadImages.m');
    end
    if (choice == 2)
        run ('include/menuCreateNetwork.m');
    end    
    if (choice == 3)
        run ('include/menuTrainNetwork.m');
    end    
    if (choice == 4)
        run ('include/menuScanImage.m');
    end
    if (choice == 5)
        clear all;
        clc;
        close all;
        return;
    end    
end