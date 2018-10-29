% Bartlomiej Borzyszkowski
% PG ETI AiR KSDiR Grupa 2.
% Tested on MATLAB R2015b
% Date of project: 11/2018
% http://www.github.com/borzyszkowski


function output = mminmax(input)

max_ = max(max(input));
min_ = min(min(input));

output = ((input-min_)/(max_-min_) - 0.5) * 2;