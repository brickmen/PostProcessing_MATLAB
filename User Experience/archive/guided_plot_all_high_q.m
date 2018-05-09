%Plots Everything to single plots
addpath('.\Plot\')
addpath('.\altmany-export_fig-5f4c67c\')



%set plot range here
x_max = 50;
x_min = -50;
y_max = 50;
y_min = -50;
[X,Y] = meshgrid(x_min:ux_plot_grid_res:x_max,y_min:ux_plot_grid_res:y_max);

z_values = unique(exp_values(:,3));
fprintf(' exp Z slices available\n')
disp(exp_z_values)

figure(1);
colormap('jet')

fprintf(' Plotting resullts and saving .PNG files to %s \n', ux_export_path )
ux_prompt = ' Please resize Figure window to preferred sizing. <any key> when ready or <0> to cancel ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case 0
        fprintf(' Cancelling\n')
        return
    otherwise
        
   
end

for i= 1:length(z_values)
    z_value_selected = z_values(i);
    
    plotTitle = ['EXP Mutual to P1, Z-' num2str(z_value_selected) ' mm'];
    plt_values = exp_mutual_p1;
    single_contour;
    saveFile = [ux_export_path plotTitle];
    saveFilePng = [saveFile '.png'];
    export_fig(saveFilePng);
    
end