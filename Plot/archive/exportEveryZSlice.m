% Plots all contours with mathing Z values and saves
addpath('.\altmany-export_fig-5f4c67c\')
addpath('.\Plot\')
plotSetup;


z_values = unique( shared_z_values );

for i= 1:length(z_values)
    z_value_selected = z_values(i);
    plotNormalisationFinished;
    
    saveFile = [exportPath 'z_val_' num2str(z_values(i))];
    
    %saveFileMat = [saveFile '.mat'];
    saveFilePng = [saveFile '.png'];
    
    %save(saveFileMat, 'plotValues');
    export_fig(saveFilePng);
    
end
    
