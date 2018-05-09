%Sets the range from the results to use on the contours


x_range_start = min(results(:,1));
x_range_end = max(results(:,1));
y_range_start = min(results(:,2));
y_range_end = max(results(:,2));
z_range_start = min(results(:,3));
z_range_end = max(results(:,3));
noOfPoints = length(results);
fprintf('X Range   %i to %i \n', x_range_start, x_range_end)
fprintf('Y Range   %i to %i \n', y_range_start, y_range_end)
fprintf('Z Range   %i to %i \n', z_range_start, z_range_end)
fprintf('Total Points %i \n', noOfPoints)

z_value_selected = z_range_start;
[X,Y] = meshgrid(x_range_start:2:x_range_end,y_range_start:2:y_range_end);
shared_z_values = unique( results(:,3));

