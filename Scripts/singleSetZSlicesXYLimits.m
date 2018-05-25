% find z-slices and XY limits in <results> outputs: <x/y/z_values>, <x/y_min/max_lim>
% Z slices
z_values = unique(results(:,3));
y_values = unique(results(:,2));
x_values = unique(results(:,1));
fprintf('z values  are:')
disp(z_values)
% XY Limits
x_max_lim = max(results(:,1));
x_min_lim = min(results(:,1));
y_max_lim = max(results(:,2));
y_min_lim = min(results(:,2));