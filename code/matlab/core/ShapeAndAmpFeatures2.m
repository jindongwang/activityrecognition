function [shape_mean,shape_sd,shape_skew,shape_kurt,amp_mean,amp_sd,amp_skew,amp_kurt]=ShapeAndAmpFeatures2(data)

%   INPUT
%   data: NO*1
%   OUTPUT
%   shape_mean: 1*1
%   shape_sd: 1*1
%   shape_skew: 1*1
%   shape_kurt: 1*1
%   amp_mean: 1*1
%   amp_sd: 1*1
%   amp_skew: 1*1
%   amp_kurt: 1*1

index=(2:(length(data)/2+1))';
psd=data(index);
clear index
% psd = pwelch(data);
psd = psd';
[row_psd,column_psd] = size(psd);
S = sum(psd);

temp = 0;
        for m = 1:column_psd
            temp = temp + m*psd(m);
        end
        shape_mean=temp/S;

        temp=0;
        for m=1:column_psd
            temp=temp+((m-shape_mean)^2)*psd(m);
        end
        shape_sd=(temp/S)^0.5;

        temp=0;
        for m=1:column_psd
            temp=temp+(((m-shape_mean)/shape_sd)^3)*psd(m);
        end
        shape_skew=temp/S;

        temp=0;
        for m=1:column_psd
            temp=temp+(((m-shape_mean)/shape_sd)^4)*psd(m);
        end
        shape_kurt=temp/S-3;

        %amp feature
        N=column_psd;
        temp=0;
        for m=1:column_psd
            temp=temp+psd(m);
        end
        amp_mean=temp/N;

        temp=0;
        for m=1:column_psd
            temp=temp+(psd(m)-amp_mean)^2;
        end
        amp_sd=(temp/N)^0.5;

        temp=0;
        for m=1:column_psd
            temp=temp+((psd(m)-amp_mean)/amp_sd)^3;
        end
        amp_skew=temp/N;

        temp=0;
        for m=1:column_psd
            temp=temp+((psd(m)-amp_mean)/amp_sd)^4;
        end
        amp_kurt=temp/N-3;