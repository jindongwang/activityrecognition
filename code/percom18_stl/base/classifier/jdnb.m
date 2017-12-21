function [predict_label,accuracy] = jdnb(x_train,y_train,x_test,y_test,options)
%%jdnb:packaged NaiveBayes from Matlab,just for easier use.
%%==============================================================================
%%input:
%%------x_train,...,y_test  :   training and testing sets.                               [required]
%%------options             :   some options to build the tree,default is null.More see help.    [not required]

%%output:
%%------predict_label       :   predicted label vector for test case.
%%------accuracy            :   accuracy
%%==============================================================================
	predict_label = [];
    accuracy = 0;
	switch nargin
		case 4
			model = NaiveBayes.fit(x_train,y_train);
	        predict_label = model.predict(x_test);
			accuracy = mean(predict_label == y_test);
		case 5
			model = NaiveBayes.fit(x_train,y_train);
	        predict_label = model.predict(x_test);
			accuracy = mean(predict_label == y_test);
		otherwise
			fprintf('++++++Fatal error!Please check the input!');
            return
	end
end