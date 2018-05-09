% find shared limits, outputs: <x/y>_<min/max>_lim
% Find Lowest X max
fea_x_max = max(fea_values(:,1));
exp_x_max = max(exp_values(:,1));
fprintf(' X Max (FEA -- EXP) = %4.1f -- %4.1f ', fea_x_max, exp_x_max)
if fea_x_max >= exp_x_max
    x_max_lim = exp_x_max;
else
    x_max_lim = fea_x_max;
end
fprintf(' Limit set %4.1f \n', x_max_lim)
% Find Highest X min
fea_x_min = min(fea_values(:,1));
exp_x_min = min(exp_values(:,1));
fprintf(' X Min (FEA -- EXP) = %4.1f -- %4.1f ', fea_x_min, exp_x_min)
if fea_x_min <= exp_x_min
    x_min_lim = exp_x_min;
else
    x_min_lim = fea_x_min;
end
fprintf(' Limit set %4.1f \n', x_min_lim)

fea_y_max = max(fea_values(:,2));
exp_y_max = max(exp_values(:,2));
fprintf(' Y Max (FEA -- EXP) = %4.1f -- %4.1f ', fea_y_max, exp_y_max)
if fea_y_max >= exp_y_max
    y_max_lim = exp_y_max;
else
    y_max_lim = fea_y_max;
end
fprintf(' Limit set %4.1f \n', y_max_lim)
% Find Lowest X min
fea_y_min = min(fea_values(:,2));
exp_y_min = min(exp_values(:,2));
fprintf(' Y Min (FEA -- EXP) = %4.1f -- %4.1f ', fea_y_min, exp_y_min)
if fea_y_min <= exp_y_min
    y_min_lim = exp_y_min;
else
    y_min_lim = fea_y_min;
end
fprintf(' Limit set %4.1f \n', y_min_lim)