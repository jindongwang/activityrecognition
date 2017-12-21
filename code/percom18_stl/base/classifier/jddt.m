function [predict_label,accuracy] = jddt(x_train,y_train,x_test,y_test,options)
%%jddt:packaged decision tree from Matlab,just for easier use.
%%==============================================================================
%%input:
%%------x_train,...,y_test  :   training and testing sets.                               [required]
%%------options             :   some options to build the tree,default is null.    [not required]

%%output:
%%------predict_label       :   predicted label vector for test case.
%%------accuracy            :   accuracy
%%==============================================================================
	predict_label = [];
    accuracy = 0;
	switch nargin
		case 4
			tre = fitctree(x_train,y_train);
	        predict_label = tre.predict(x_test);
			accuracy = mean(predict_label == y_test);
		case 5
			tre = fitctree(x_train,y_train,options);
			predict_label = tre.predict(x_test);
			accuracy = mean(predict_label == y_test);
		otherwise
			fprintf('++++++Fatal error!Please check the input!');
            return
	end
end