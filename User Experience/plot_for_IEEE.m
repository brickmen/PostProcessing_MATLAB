% Creates Every Plot for the IEEE journal Paper, run singleXYContourPlot first
addpath('.\Plot\altmany-export_fig-5f4c67c\')
% First Get Shared Z values
fea_values = fea_mutual_p1;
exp_values = exp_mutual_p1;
findSharedZSlices;
findSharedXYLimits;
[X,Y] = meshgrid(x_min_lim:ux_plot_grid_res:x_max_lim,y_min_lim:ux_plot_grid_res:y_max_lim);
setXYTicks;

eightAxPlotSetup;
set(gcf,'color','w');
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

results= exp_mutual_both;
singleSetZSlicesXYLimits
setXY2dSamplePoints;
plot2dEXPSummary;
plot_file_name =  'exp_summary';
highResPlotSave;

results= fea_mutual_both;
singleSetZSlicesXYLimits
setXY2dSamplePoints;
plot2dFEASummary
plot_file_name = 'fea_summary';
highResPlotSave;

for i= 1:length(shared_z_values)
    z_value_selected = exp_z_values(i);
    % Plot Experimental
    expEightAxPlot;    
    plot_file_name = [ 'exp_8ax_z_' num2str(exp_z_values(i))];
    highResPlotSave;
    
    % Plot Finite Element
    feaEightAxPlot;    
    plot_file_name = ['fea_8ax_z_' num2str(exp_z_values(i))];
    highResPlotSave;
    % Plot Errors
    exp_z_value_selected = shared_z_values(i);
    fea_z_value_selected = shared_z_values(i);
    errorPlotEightAx;
    plot_file_name = [ 'err_8ax_z_' num2str(exp_z_values(i))];
    highResPlotSave;
    
end
errorPlotZTrend;
ux_prompt = ' Please resize Figure window to preferred sizing. <1> when ready or <> to cancel ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        fprintf(' Plotting Please Wait...\n')
    otherwise
        fprintf(' Cancelling\n')
        return
   
end
plot_file_name = 'error_trends';
highResPlotSave;
