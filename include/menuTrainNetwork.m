% Bartlomiej Borzyszkowski
% PG ETI AiR KSDiR Grupa 2.
% Tested on MATLAB R2015b
% Date of project: 11/2018
% http://www.github.com/borzyszkowski


function menuTrainNetwork

if ~exist('../data/imgdb.mat','file')
    fprintf('Database file imgdb.mat does not exist in data folder!\n');
    return;
else
    load ('../data/imgdb.mat');
end

if ~exist('../data/net.mat','file')
    fprintf('Network file net.mat does not exist in data folder!\n');
    return;
else
    load ('../data/net.mat');
end

fprintf ('Training neural network ...\n');

T{1,1} = cell2mat(IMGDB(2,:))';
P{1,1} = cell2mat(IMGDB(3,:))';

net = trainNetwork(net,P{1,1},T{1,1},1000,1);

save('../data/net.mat','net');