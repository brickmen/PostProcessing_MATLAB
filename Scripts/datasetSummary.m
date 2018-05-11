% for <fea/exp>_values finds Mean and calculates differences for each slice

% Find XY Limits
%findSharedXYLimits;
x_max_lim =50
x_min_lim =-50
y_max_lim =50
y_min_lim =-50

% Trim Dataset
dataset_to_trim = fea_values;
trimDatasets;
fea_values = reduced_dataset;
dataset_to_trim = exp_values;
trimDatasets;
exp_values = reduced_dataset;

% Optional
% addOffsetToExpZ;

% Find the shared Z values
findSharedZSlices;
summary_labels(:) = [ 'Z Value', 'FEA Mean','EXP Mean','Delta Mean','FEA max','EXP max','Delta Max','FEA min','EXP min','Delta Min'];
disp(summary_labels)
%Print details to screen (save to table)
for i = 1:1:length(shared_z_values)
    fprintf('For z = %4.1f: \n', shared_z_values(i))
    selected_fea_z_slice = fea_values(fea_values(:,3)==shared_z_values(i),:); 
    selected_exp_z_slice = exp_values(exp_values(:,3)==shared_z_values(i),:);
    
    xbar_fea = mean( selected_fea_z_slice(:,4));
    xbar_exp = mean( selected_exp_z_slice(:,4));
    delta_xbar = 100*((xbar_fea/xbar_exp) -1);
    max_fea = max( selected_fea_z_slice(:,4));
    max_exp = max( selected_exp_z_slice(:,4));
    delta_max = 100*((max_fea/max_exp) -1);
    min_fea = min( selected_fea_z_slice(:,4));
    min_exp = min( selected_exp_z_slice(:,4));
    delta_min = 100*((min_fea/min_exp) -1);
    
    values(:) = [ shared_z_values(i) xbar_fea xbar_exp delta_xbar max_fea max_exp delta_max min_fea min_exp delta_min];
    disp(values)
    summary(i,:) = values(:);
end
fprintf('Complete: All Values saved to Summary Table \n')

