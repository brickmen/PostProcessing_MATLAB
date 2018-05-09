%Sets Path to FEA/EXP datasets then imports them

fprintf('Directory chosen: %s\n', ux_fea_import_path)
addpath(ux_fea_import_path);

% Import File Names
% Set By script, 
fprintf('NOTE: FEA Import file names are set in defaults.mat or script\n')


% Expected form of file is
% <ux_fea_import_prefix><ux_fea_import_mid(i)><ux_fea_import_suffix><ux_fea_import_quant><ux_fea_import_ext>
% ie: alex_3-p1p1-1.csv

filename = strcat(ux_fea_import_prefix, ux_fea_import_mid(1), ux_fea_import_suffix, num2str(1),ux_fea_import_ext);
fprintf(' Expected first file is %s , if this does not exist or the complete set does not exist an error will follow \n', filename)
fprintf(' Script expects %i files in import directory \n', length(ux_fea_import_mid)*ux_fea_import_quant)

addpath('.\FEA DATA Extraction\');
importDatasetFEA_4;


