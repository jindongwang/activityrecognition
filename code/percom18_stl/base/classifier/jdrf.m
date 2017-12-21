function [predict_label,accuracy] = jdrf(x_train,y_train,x_test,y_test,n_trees)
%%jdrf:packaged TreeBagger from Matlab,just for easier use.
%%==============================================================================
%%input:
%%------x_train,...,y_test  :   training and testing sets.        [required]
%%------n_trees             :   number of trees,default is 10.    [not required]

%%output:
%%------predict_label       :   predicted label vector for test case.
%%------accuracy            :   accuracy
%%==============================================================================
	predict_label = [];
    accuracy = 0;
    switch nargin
        case 4
            tree_para = 10;
        case 5
            tree_para = n_trees;
        otherwise
            fprintf('++++++Fatal error!Please check the input!');
            return
	end
	factor = TreeBagger(tree_para,x_train,y_train);
    [predict_labels,scores] = predict(factor,x_test);
    predictY = str2num(char(predict_labels));
    accuracy = mean(predictY == y_test);
    predict_label = predictY;
end