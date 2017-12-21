function [predict_label,accuracy,prob_estimates] = jdsvm(x_train,y_train,x_test,y_test,c,g,kernel_type)
%%jdsvm:packaged libsvm,just for easier use.
%%==============================================================================
%%input:
%%------x_train,...,y_test  :   training and testing sets.                               [required]
%%------c                   :   punishment factor(the more,the heavier),default is 1.    [not required]
%%------g                   :   gamma function,default is 1/(#features).                 [not required]
%%------kernel_type         :   kernel type,value is int,the choices are:                [not required]
%%%%----------------0       :   linear
%%%%----------------1       :   polynomial
%%%%----------------2       :   rbf(default)
%%%%----------------3       :   sigmoid

%%output:
%%------predict_label       :   predicted label vector for test case.
%%------accuracy            :   accuracy
%%------prob_estimates      :   prob estimates
%%==============================================================================
    predict_label = [];
    accuracy = 0;
    prob_estimates = [];
    c_default = 1;
	g_default = 1 / size(x_train,2);
	kernel_type_default = 2;

	c_para = c_default;
	g_para = g_default;
	kernel_para = kernel_type_default;

	switch nargin
		case 4
			c_para = c_default;
			g_para = g_default;
			kernel_para = kernel_type_default;
		case 5
			c_para = c;
			g_para = g_default;
			kernel_para = kernel_type_default;
		case 6
			c_para = c;
			g_para = g;
			kernel_para = kernel_type_default;
		case 7
			c_para = c;
			g_para = g;
			kernel_para = kernel_type;
        otherwise
            fprintf('++++++Fatal error!Please check the input!');
            return
	end

	options = ['-c ',num2str(c_para),' -g ',num2str(g_para),' -t ',num2str(kernel_para)];
	model = libsvmtrain(y_train,x_train,options);
	[predict_label,accuracy,prob_estimates] = libsvmpredict(y_test,x_test,model);
	accuracy = accuracy(1) / 100;

end