function [data_after_pca] = jdpca(data,numdim)
%%%%Percom PCA on data

%%Input:
%%%%----data              :     data to perfom pca     [required]
%%%%----numdim            :     the final dimension    [required]

%%Output:
%%%%----data_after_pca    :     returned data
%%===================================================================

    [~,SCORE] = pca(data);
    data_after_pca = SOCRE(:,1:numdim);
end