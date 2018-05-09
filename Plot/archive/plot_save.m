saveFile = [ux_export_path '2D Summary' ];
    
%saveFileMat = [saveFile '.mat'];
saveFilePng = [saveFile '.png'];

%save(saveFileMat, 'plotValues');
export_fig(saveFilePng);
