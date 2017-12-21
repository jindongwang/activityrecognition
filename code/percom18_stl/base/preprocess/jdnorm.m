function [X_src_new,X_tar_new] = jdnorm(X_src,X_tar,min,max)
    X_domain = [X_src;X_tar];
    X_domain_norm = mapminmax(X_domain',min,max)';
    X_src_new = X_domain_norm(1:size(X_src,1),:);
    X_tar_new = X_domain_norm(size(X_src) + 1 : end,:);
end