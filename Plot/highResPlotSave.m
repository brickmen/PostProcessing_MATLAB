% Saves High resolution version of Plot

saveFile = [ux_export_path plot_file_name];
saveFilePng = [saveFile '.png'];
export_fig(saveFilePng, '-m4') ;