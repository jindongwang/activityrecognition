%%%Example usage
win_size = 100;    %set window size
step = 0.5;        %set overlap (0.1~1)
%perform feature extraction
%data is the raw data readings, e.g. a vector of a window
dataFE = FeatureExtraction2(data,win_size,step);
%dataFE is the extracted feature matrix, but it is without label

%get your label somewhere
label = 1;
%generate the label column
label_column = zeros(size(dataFE,1),1);
label_column(:) = l_label;

%combine the feature matrix with the label column
dataFE_mat = [dataFE,label_column,user_column];

%%%This is only to show how to extract features on given data.
%%%For actual use, there are more than one subject and more than one label
%%%You need to write your own code to assemble the whole process