% Creates Every Plot for the IEEE journal Paper, run singleXYContourPlot first
addpath('.\Plot\altmany-export_fig-5f4c67c\')
% First Get Shared Z values
results = fea_mutual_p1;
% singleSetZSlicesXYLimits;
% [X,Y] = meshgrid(x_min_lim:ux_plot_grid_res:x_max_lim,y_min_lim:ux_plot_grid_res:y_max_lim);
% setXYTicks;
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
feaModeToPol;
plot2dFEASummary;
plot_file_name =  'exp_polar_summary';
highResPlotSave;
exp_z_values = shared_z_values;
for i= 1:length(shared_z_values)
    z_value_selected = exp_z_values(i);
    % Plot Experimental
    feaEightAxPlot;    
    plot_file_name = [ 'exp_polar_8ax_z_' num2str(exp_z_values(i))];
    highResPlotSave;
    
    
end
feaModeToNonPol;
plot2dFEASummary;
plot_file_name =  'exp_non_pol_summary';
highResPlotSave;
exp_z_values = shared_z_values;
for i= 1:length(shared_z_values)
    z_value_selected = exp_z_values(i);
    % Plot Experimental
    feaEightAxPlot;    
    plot_file_name = [ 'exp_non_pol_8ax_z_' num2str(exp_z_values(i))];
    highResPlotSave;
    
    
end
feaModeToSingle;
plot2dFEASummary;
plot_file_name =  'exp_single_summary';
highResPlotSave;
exp_z_values = shared_z_values;
for i= 1:length(shared_z_values)
    z_value_selected = exp_z_values(i);
    % Plot Experimental
    feaEightAxPlot;    
    plot_file_name = [ 'exp_single_8ax_z_' num2str(exp_z_values(i))];
    highResPlotSave;
    
    
end
