%Plots A Single Slice for the error between mutual measurements
addpath('.\Plot\')

plotSetup;

%pick a dataset to Calculate Errors
fea_values = fea_mutual_p1;
exp_values = exp_mutual_p1;

datasetSummary;


[X,Y] = meshgrid(x_min_lim:ux_plot_grid_res:x_max_lim,y_min_lim:ux_plot_grid_res:y_max_lim);

fprintf(' Shared Z slices available\n')
disp(shared_z_values)

ux_prompt = ' Enter Z value for plot: <0> to cancel ';
ux_user_input = input(ux_prompt);
switch ux_user_input
    case 0
        fprintf(' Cancelling\n')
        return
    otherwise
        fea_z_value_selected = ux_user_input;
        exp_z_value_selected = ux_user_input;      
end

errorPlotv2;