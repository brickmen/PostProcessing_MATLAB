% Creates Every Plot for experimental measured values
addpath('.\Plot\altmany-export_fig-5f4c67c\')
% First Get Shared Z values
results = exp_mutual_p1;
singleSetZSlicesXYLimits;
[X,Y] = meshgrid(x_min_lim:ux_plot_grid_res:x_max_lim,y_min_lim:ux_plot_grid_res:y_max_lim);
setXYTicks;
setXY2dSamplePoints;
eightAxPlotSetup;
fprintf(' Plotting results and saving .PNG files to %s \n', ux_export_path )
ux_prompt = ' Please resize Figure window to preferred sizing. <1> when ready or <> to cancel ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        fprintf(' Plotting Please Wait...\n')
    otherwise
        fprintf(' Cancelling\n')
        return
   
end

plot2dEXPSummary;
plot_file_name =  'exp_summary';
highResPlotSave;

exp_z_values = z_values;
for i= 1:length(z_values)
    z_value_selected = z_values(i);
    % Plot Experimental
    expEightAxPlotMeasured;    
    plot_file_name = [ 'exp_meas_8ax_z_' num2str(z_values(i))];
    highResPlotSave;
    
    
end

