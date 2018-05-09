%Sets Path to FEA/EXP datasets then imports them

fprintf('Directory chosen: %s\n', ux_exp_import_path)
addpath(ux_exp_import_path);
fprintf('File chosen: %s\n', ux_exp_import_file)
load(ux_exp_import_file);
exp_import = results;





