%Plots A Single Slice from the FEA Results
addpath('.\Plot\')

plotSetup;

%pick a dataset to set all ranges
fea_values = fea_mutual_p1;

fea_x_max = max(fea_values(:,1));
fea_x_min = min(fea_values(:,1));
fea_y_max = max(fea_values(:,2));
fea_y_min = min(fea_values(:,2));
[X,Y] = meshgrid(fea_x_min:ux_plot_grid_res:fea_x_max,fea_y_min:ux_plot_grid_res:fea_y_max);

fea_z_values = unique(fea_values(:,3));
fprintf(' FEA Z slices available\n')
disp(fea_z_values)

ux_prompt = ' Enter Z value for plot: <s> to cancel ';
ux_user_input = input(ux_prompt);
switch ux_user_input
    case 's'
        fprintf(' Cancelling\n')
        return
    otherwise
        z_value_selected = ux_user_input;        
end

feaPlot_3;