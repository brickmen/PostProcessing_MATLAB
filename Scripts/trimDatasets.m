% Trim Datasets to reduced Area defined by <x/y>_<min/max/>_lim, outputs: reduced_<fea/exp>_values
% Trim FEA
index=1;
for i = 1:1:length(fea_values)
    if fea_values(i,1) >= x_min_lim && fea_values(i,1) >= x_min_lim
        if fea_values(i,2) >= y_min_lim && fea_values(i,2) >= y_min_lim
            reduced_fea_values(index,:) = fea_values (i,:);
            index = index +1;
        end
    end
end
fprintf('FEA Dataset reduced from %i to %i by limits  \n', i, index)
fea_values = reduced_fea_values;
% Trim EXP
index=1;
for i = 1:1:length(exp_values)
    if exp_values(i,1) >= x_min_lim && exp_values(i,1) >= x_min_lim
        if exp_values(i,2) >= y_min_lim && exp_values(i,2) >= y_min_lim
            reduced_exp_values(index,:) = exp_values (i,:);
            index = index +1;
        end
    end
end
fprintf('EXP Dataset reduced from %i to %i by limits  \n', i, index)
exp_values = reduced_exp_values;