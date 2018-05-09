%Plots All Slices from the exp Results
addpath('.\Plot\')
addpath('.\altmany-export_fig-5f4c67c\')

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

fprintf(' Plotting resullts and saving .PNG files to %s \n', ux_export_path )
ux_prompt = ' Please resize Figure window to preferred sizing. <any key> when ready or <0> to cancel ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case 0
        fprintf(' Cancelling\n')
        return
    otherwise
        
   
end

for i= 1:length(exp_z_values)
    z_value_selected = exp_z_values(i);
    expPlot_3_ext_left;
    
    saveFile = [ux_export_path 'exp_inductance_z_' num2str(exp_z_values(i))];
    
    %saveFileMat = [saveFile '.mat'];
    saveFilePng = [saveFile '.png'];
    
    %save(saveFileMat, 'plotValues');
    export_fig(saveFilePng);
    
end

