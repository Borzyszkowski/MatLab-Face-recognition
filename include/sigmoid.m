% Bartlomiej Borzyszkowski
% PG ETI AiR KSDiR Grupa 2.
% Tested on MATLAB R2015b
% Date of project: 11/2018
% http://www.github.com/borzyszkowski


function g = sigmoid(z)
g = 1.0 ./ (1.0 + exp(-z));
end
