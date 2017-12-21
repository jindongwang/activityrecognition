clear;
addpath(genpath('data/'))
file_name = 'DSADS';         %% 'OPP' | 'DSADS' | 'PAMAP'
dim = 30;                  %% < 81
%% Use i and j to denote the different body positions in each dataset
for i = 2 : 2             
    for j = 3 : 3
        if i == j
            continue;
        end
        %% Get source and target domain according to dataset
        [src_domain,tar_domain] = load_data(file_name,i,j);
            n1 = size(src_domain,1);
            n2 = size(tar_domain,1);
            seq1 = randperm(n1);
            seq2 = randperm(n2);
            r_source_domain = src_domain(seq1,:);
            r_target_domain = tar_domain(seq2,:);
            x_src = r_source_domain(:,1:end - 1);
            y_src = r_source_domain(:,end);
            x_tar = r_target_domain(:,1:end - 1);
            y_tar = r_target_domain(:,end);
%               
            x_src = zscore(x_src);
            x_tar = zscore(x_tar);
            
            acc_stl = STL(x_src,y_src,x_tar,y_tar,dim);
            fprintf('Acc: %.2f\n',acc_stl);

    end
end


function [src_domain,tar_domain] = load_data(file_name,src_index,tar_index)
    data = []; 
    col_sets = {[1:81],[82:162],[163:243],[244:324],[325:405]};
    src_set = col_sets{src_index};
    tar_set = col_sets{tar_index};
    switch(file_name)
        case 'DSADS'
            load('data/activity_recognition/dsads.mat');
            data = data_dsads;
            index = data(:,end - 1) == 1 | data(:,end - 1) == 2 | data(:,end - 1) == 3 ...
            | data(:,end - 1) == 4 | data(:,end - 1) == 5 | data(:,end - 1) == 6 ...
            | data(:,end - 1) == 7 | data(:,end - 1) == 9 | data(:,end - 1) == 12 ...
            | data(:,end - 1) == 18;
            src_domain = data(index,[src_set,end - 1]);
            tar_domain = data(index,[tar_set,end - 1]);
        case 'OPP'
            load('data/activity_recognition/opp_loco.mat');
            index = data_opp_loco(:,end) ~= 4;
            data = feature_norm(index,:);
            src_domain = data(:,[src_set,end - 2]);
            tar_domain = data(:,[tar_set,end - 2]);
        case 'PAMAP'
            load('data/activity_recognition/pamap.mat');
            data = data_pamap;
            index = data(:,end - 1) == 1 | data(:,end - 1) == 2 | data(:,end - 1) == 3 ...
            | data(:,end - 1) == 4 | data(:,end - 1) == 5 | data(:,end - 1) == 6 ...
            | data(:,end - 1) == 7 | data(:,end - 1) == 9 | data(:,end - 1) == 12 ...
            | data(:,end - 1) == 13;
            src_domain = data(index,[src_set,end - 1]);
            tar_domain = data(index,[tar_set,end - 1]);
    end
end
