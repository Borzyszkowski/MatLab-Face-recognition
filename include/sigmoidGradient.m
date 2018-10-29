% Bartlomiej Borzyszkowski
% PG ETI AiR KSDiR Grupa 2.
% Tested on MATLAB R2015b
% Date of project: 11/2018
% http://www.github.com/borzyszkowski


function g = sigmoidGradient(z)
h = sigmoid(z);
g = h.*(1-h);
end
