% Script will check for defaults.mat if not exist will configure them

if exist("defaults.mat")
    load('defaults.mat')
    fprintf('defaults.mat exists, loaded defaults from here  \n')
else
    % EXP Dataset Parameters
    ux_exp_import_path = '.\Inputs\exp_import\';
    ux_exp_import_file = 'measured.mat';
    
    % FEA Dataset Parameters
    ux_fea_import_path = '.\Inputs\fe_import\';
    ux_fea_import_prefix = 'prefix-';
    ux_fea_import_mid = ["p1p1", "p2p2", "p1p2", "s1s1", "s1s2", "s2s2", "s1p1", "s1p2", "s2p1", "s2p2"];
    ux_fea_import_suffix = '-';
    ux_fea_import_quant = 3; %number of files it is split into
    ux_fea_import_ext = '.csv';
    
    % Export Dataset Parameters
    ux_export_path = '.\Outputs\outputs\';
    
    fprintf('defaults.mat does not exist, set defaults from set_defaults script  \n')
end