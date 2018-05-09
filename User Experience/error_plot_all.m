%Plots A Single Slice from the exp Results
addpath('.\Plot\altmany-export_fig-5f4c67c\')
%Setup
eightAxPlotSetup;
%pick a dataset for finding XY limits to set grid, resolution is a <ux_>
%variable
fea_values = fea_mutual_p1;
exp_values = exp_mutual_p1;
findSharedXYLimits;
%Set Grid
[X,Y] = meshgrid(x_min_lim:ux_plot_grid_res:x_max_lim,y_min_lim:ux_plot_grid_res:y_max_lim);
% Find Shared Z Slices
findSharedZSlices;
fprintf(' Shared Z slices available\n')
disp(shared_z_values)

fprintf(' Plotting resullts and saving .PNG files to %s \n', ux_export_path )
ux_prompt = ' Please resize Figure window to preferred sizing. <any key> when ready or <0> to cancel ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case 0
        fprintf(' Cancelling\n')
        return
    otherwise
        
   
end

for i= 1:length(shared_z_values)
    z_value_selected = shared_z_values(i);
     exp_z_value_selected = shared_z_values(i);
     fea_z_value_selected = shared_z_values(i);
    errorPlotEightAx;
    
    saveFile = [ux_export_path 'xy_contour_errors_' num2str(shared_z_values(i))];
    
    %saveFileMat = [saveFile '.mat'];
    saveFilePng = [saveFile '.png'];
    
    %save(saveFileMat, 'plotValues');
    export_fig(saveFilePng);
    
    
end