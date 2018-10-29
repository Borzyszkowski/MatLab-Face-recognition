% Bartlomiej Borzyszkowski
% PG ETI AiR KSDiR Grupa 2.
% Tested on MATLAB R2015b
% Date of project: 11/2018
% http://www.github.com/borzyszkowski


function net = createNetwork(input_layer_size,hidden_layer_size,num_labels)

net.input_layer_size = input_layer_size;
net.hidden_layer_size = hidden_layer_size;
net.num_labels = num_labels;

net.Theta1 = initWeights(input_layer_size, hidden_layer_size);
net.Theta2 = initWeights(hidden_layer_size, num_labels);




