function [acc_stl] = STL(X_src,y_src,X_tar,y_tar,dim)
% Stratified Transfer Learning for Cross-domain Activity Recognition.
% Jindong Wang, Yiqiang Chen, Lisha hu, Xiaohui Peng, and Philip S. Yu.
% 2018 IEEE International Conference on Pervasive Computing and Communications (PerCom).

%% Inputs: 
%%%% X_src : Source domain feature matrix, n_sample * n_dim
%%%% y_src : Source domain label vector, n_sample * 1
%%%% X_tar : Target domain feature matrix, n_sample * n_dim
%%%% y_src : Target domain label vector, n_sample * 1
%%%% dim   : Dimension after STL, an integer
%% Output:
%%%% acc_stl: accuracy of the algorithm

    label_set = unique(y_src(:));
    num_tree = 30;
    %voting
    %%RF
    [predict_label_rf,accuracy_rf] = jdrf(X_src,y_src,X_tar,y_tar,30);
    %%SVM
    [predict_label_svm,accuracy_svm,~] = jdsvm(X_src,y_src,X_tar,y_tar,100);
    %%KNN
    [predict_label_knn,accuracy_knn] = jdknn(X_src,y_src,X_tar,y_tar,5);
    %%voting
    label_voting = [];
    for i = 1 : size(y_tar,1)
        if predict_label_rf(i) == predict_label_svm(i)
            label_voting(i) = predict_label_rf(i);
        elseif predict_label_rf(i) == predict_label_knn(i)
            label_voting(i) = predict_label_rf(i);
        elseif predict_label_svm(i) == predict_label_knn(i)
            label_voting(i) = predict_label_svm(i);
        else
            label_voting(i) = -1;
        end
    end
    label_voting = label_voting';
    %get residual
    r_index = label_voting(:,1) == -1;
    X_tar_residual = X_tar(r_index,:);
    y_tar_residual = y_tar(r_index,:);
    
    %get candidate
    c_index = label_voting(:,1) ~= -1;
    X_tar_candidate = X_tar(c_index,:);
    y_tar_candidate = y_tar(c_index,:);
    label_candidate = label_voting(c_index);
    conmat1 = confusionmat(label_candidate,y_tar_candidate);
    %in-class transfer
    %%%new candidates and source domain
    X_tar_candidate_new = [];
    y_tar_candidate_new = [];
    X_src_new = [];
    y_src_new = [];
    X_tar_candidate_old = [];
    y_tar_candidate_old = [];
    for i = 1 : size(label_set,1)
        class_index = label_set(i);
        %source data in that class i
        src_index_i = y_src(:) == class_index;
        X_src_i = X_src(src_index_i,:);
        y_src_i = y_src(src_index_i,:);
        %candidate data in that class i
        tar_index_i = label_candidate(:) == class_index;
        X_tar_candidate_i = X_tar_candidate(tar_index_i,:);
        y_tar_candidate_i = y_tar_candidate(tar_index_i,:);
        X_tar_candidate_old = [X_tar_candidate_old;X_tar_candidate_i];
        y_tar_candidate_old = [y_tar_candidate_old;y_tar_candidate_i];
        %TCA
        [X_src_new_i,X_tar_candidate_new_i] = MyTCA(X_src_i,X_tar_candidate_i,dim);
        %merge
        X_src_new = [X_src_new;X_src_new_i];
        y_src_new = [y_src_new;y_src_i];
        X_tar_candidate_new = [X_tar_candidate_new;X_tar_candidate_new_i];
        y_tar_candidate_new = [y_tar_candidate_new;y_tar_candidate_i];
    end
    %train model on new candidate
    [predicted_label_candidate,acc_candidate] = ...
        jdrf(X_src_new,y_src_new,X_tar_candidate_new,y_tar_candidate_new,num_tree);
    conmat2 = confusionmat(predicted_label_candidate,y_tar_candidate_new);
    %train model on old candidate and predict on residual
    [predicted_label_residual,acc_residual] = jdrf(X_tar_candidate_old,predicted_label_candidate,X_tar_residual,y_tar_residual,num_tree);
    %calculate accuracy
    acc_stl = mean([predicted_label_candidate;predicted_label_residual] == [y_tar_candidate_new;y_tar_residual]);
    
end