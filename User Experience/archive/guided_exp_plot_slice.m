%Plots A Single Slice from the exp Results
addpath('.\Plot\')

plotSetup;

%pick a dataset to set all ranges
exp_values = exp_mutual_p1;

exp_x_max = max(exp_values(:,1));
exp_x_min = min(exp_values(:,1));
exp_y_max = max(exp_values(:,2));
exp_y_min = min(exp_values(:,2));
[X,Y] = meshgrid(exp_x_min:ux_plot_grid_res:exp_x_max,exp_y_min:ux_plot_grid_res:exp_y_max);

exp_z_values = unique(exp_values(:,3));
fprintf(' exp Z slices available\n')
disp(exp_z_values)

ux_prompt = ' Enter Z value for plot: <s> to cancel ';
ux_user_input = input(ux_prompt);
switch ux_user_input
    case 's'
        fprintf(' Cancelling\n')
        return
    otherwise
        z_value_selected = ux_user_input;        
end

expPlot_3;