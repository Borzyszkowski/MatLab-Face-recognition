% Bartlomiej Borzyszkowski
% PG ETI AiR KSDiR Grupa 2.
% Tested on MATLAB R2015b
% Date of project: 11/2018
% http://www.github.com/borzyszkowski


function menuCreateNetwork

fprintf ('Creating neural network ...\n');

net = createNetwork(2160,20,2);

save ('../data/net.mat','net');