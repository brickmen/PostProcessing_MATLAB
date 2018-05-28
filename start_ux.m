% This will run through the post processing step by step with user input

addpath('./User Experience/');
addpath('./Scripts/');
addpath('./Plot/');
% Introduction
fprintf('Welcome to FEA/EXP Post-Processing in MATLAB \n \n')
fprintf('Version 1.4a  (03May18) Copyright (C) Michael Abbott 2018 \n')
fprintf('Contact: m.d.abbott@warwick.ac.uk \n')
fprintf('Guidance: This tool is developed to import .csv values from ANSYS Maxwell \n') 
fprintf('  and .mat files from auto measurements script into the MATLAB workspace. \n') 
fprintf('  It can also manage data and produce graphs for display and export. \n')

% Delete input Var as it messes things up
clearvars input;

% User Menu
ux_prompt = 'What would you like to do? Type <h> for help: ';
ux_user_input = input(ux_prompt, 's');

switch ux_user_input
    case 'h'
        fprintf('Help Selected: Below are a list of commands that can be used, then re-run script \n')
        fprintf('  <a>    Guide Through All Steps \n')
        fprintf('  <d>    Load Defaults \n')
        fprintf('  <i>    Import Data \n')
        fprintf('  <e>    Find Single Values or Dataset Summarys \n')
        fprintf('  <p>    Generate Plots \n')
        fprintf('  <s>    Save State of workspace \n')
        fprintf('  <t>    Tidy up workspace leaving ux, fea, and exp values \n')
        fprintf('  <cle>  Wipes everything (apart from ux_*) from the workspace and paths  \n')
        fprintf('  <hh>   Show More Help  \n')
    case 'a'
        fprintf('Guide Through All Steps \n')
        guided_all;
    case 'd'
        fprintf('Load defaults\n')
        setDefaults;
    case 'i'
        fprintf('Import Data\n')
        guided_import;
    case 'e'
        fprintf('Find Single Values or Dataset Summarys\n')
        guided_find;
    case 'p'
        fprintf('Extract Single Values or Dataset Summarys\n')
        guided_plot;
    case 's'
        fprintf('Save State of workspacee\n')
        saveWorkspaceState;
    case 't'
        fprintf('Tidy up workspace leaving ux, fea, exp, and err values\n')
        clearvars -except ux_* fea_* exp_* err_*
    case 'cle'
        fprintf('Clearing everything (apart from ux_*)from the workspace and paths\n')
        clearvars -except ux_*
        restoredefaultpath;
    case 'hh'
        fprintf('Loading Extended Help\n')
        extended_help;
    otherwise
        fprintf('No or Unexpected Input, please re-run script and retry \n')
end
