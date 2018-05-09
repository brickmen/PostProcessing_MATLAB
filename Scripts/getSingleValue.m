%finds value of <results> at <find_x/y/z>, outputs value and to screen


fprintf(" Selected Co-Ordinate ( %i , %i , %i ) ", find_x, find_y, find_z)
results = results(results(:,3)==find_z,:);
results = results(results(:,2)==find_y,:);
results = results(results(:,1)==find_x,:);
value = results(1,4);
fprintf(" value: %4.3f", value)

fprintf(" \n")