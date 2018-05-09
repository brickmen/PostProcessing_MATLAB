% for <fea/exp>_values finds Mean and calculates differences for each slice

% Find XY Limits
findSharedXYLimits;

% Trim Dataset
trimDatasets;

% Optional
% addOffsetToExpZ;

% Find the shared Z values
findSharedZSlices;

%Print details to screen (save to table)
for i = 1:1:length(shared_z_values)
    fprintf('For z = %4.1f: \n', shared_z_values(i))
    selected_fea_z_slice = fea_values(fea_values(:,3)==shared_z_values(i),:); 
    selected_exp_z_slice = exp_values(exp_values(:,3)==shared_z_values(i),:);
    
    fea_xbar = mean( selected_fea_z_slice(:,4));
    exp_xbar = mean( selected_exp_z_slice(:,4));
    delta_xbar = 100*((fea_xbar/exp_xbar) -1);
    fprintf('      Mean (FEA -- EXP) = %4.3f -- %4.3f    ( %4.3f %% )\n', fea_xbar, exp_xbar, delta_xbar)
    
    summary(i,:) = [ shared_z_values(i) fea_xbar exp_xbar];
end
fprintf('Complete: All Values saved to Summary Table')

