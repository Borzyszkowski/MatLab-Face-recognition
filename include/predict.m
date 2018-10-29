% Bartlomiej Borzyszkowski
% PG ETI AiR KSDiR Grupa 2.
% Tested on MATLAB R2015b
% Date of project: 11/2018
% http://www.github.com/borzyszkowski


function p = predict(net, X)
m = size(X, 1); %num-samples
h1 = sigmoid([ones(m, 1) X] * net.Theta1');
h2 = sigmoid([ones(m, 1) h1] * net.Theta2');
[dummy, p] = max(h2, [], 2); %p : num-samples x 1
end
