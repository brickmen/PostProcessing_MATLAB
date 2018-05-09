% Chooses which dataset will be imported
restoredefaultpath;
%Path to DD FEA/EXP dataset
addpath('.\Inputs\tst export\');

% expectation is that following naming will be used for FEA results
%            '1-s1-p1.csv';
% where <run_number>-s1-p1.csv for inductance from source 1 to pickup 1
% three runs are expected but this can be changed in importDatasetFEA.m

% expectation is that following naming will be used for EXP results
%            'measured.mat';


exportPath = ['Outputs\TST Results\' ];
addpath(exportPath);
