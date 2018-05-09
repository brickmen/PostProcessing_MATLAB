%Plots All Slices from the fea Results
addpath('.\Plot\')
addpath('.\altmany-export_fig-5f4c67c\')

plotSetup;

%pick a dataset to set all ranges
fea_values = fea_mutual_p1;

fea_x_max = max(fea_values(:,1));
fea_x_min = min(fea_values(:,1));
fea_y_max = max(fea_values(:,2));
fea_y_min = min(fea_values(:,2));
[X,Y] = meshgrid(fea_x_min:ux_plot_grid_res:fea_x_max,fea_y_min:ux_plot_grid_res:fea_y_max);

fea_z_values = unique(fea_values(:,3));
%checking z values are complete sets
test_z_values = fea_z_values; 
for i= 1:length(fea_z_values)
    plotValues = fea_values(fea_values(:,3)==fea_z_values(i),:);
    if length(plotValues)<= 100
        fprintf(' Z slice %4.2f removed from selection as it has less than 100 points\n',fea_z_values(i))
        test_z_values(i) = [];
    end
end
fea_z_values = test_z_values;
fprintf(' FEA Z slices available\n')
disp(fea_z_values)



fprintf(' Plotting resullts and saving .PNG files to %s \n', ux_export_path )
ux_prompt = ' Please resize Figure window to preferred sizing. <any key> when ready or <0> to cancel ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case 0
        fprintf(' Cancelling\n')
        return
    otherwise
        
   
end

for i= 1:length(fea_z_values)
    z_value_selected = fea_z_values(i);
    
    feaPlot_3;
    
    saveFile = [ux_export_path 'fea_inductance_z_' num2str(fea_z_values(i))];
    
    %saveFileMat = [saveFile '.mat'];
    saveFilePng = [saveFile '.png'];
    
    %save(saveFileMat, 'plotValues');
    export_fig(saveFilePng);
    
end