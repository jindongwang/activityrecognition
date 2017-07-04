function cross_time=MeanCrossingRate(data)
%	Acc feas Computation
%   INPUT:
%   data NO*1
%   OUTPUT:
%   cross_time: 1*1 mean crossing rate

mean_series = data - mean(data);
cross_time = 0;
for i = 2:length(data)
    if mean_series(i-1)*mean_series(i) < 0
        cross_time = cross_time + 1;
    end
end