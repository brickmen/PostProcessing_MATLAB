
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1: import the FEA Data set %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('.\FEA DATA Extraction\');
importDatasetFEA_v2;
saveFileMat = [ exportPath 'FEAresults.mat'];
save(saveFileMat);

% FEAimport dataset layout
% 
% slide | offset | gap | mututal p1 | mutual p2 |

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2: import the EXP Data set %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

importDatasetEXP;
EXPimport = results;
saveFileMat = [ exportPath 'EXPresults.mat'];
save(saveFileMat, 'EXPimport');

% FEAimport dataset layout
% 
% slide | offset | gap | vrms source | irms source | voc p1 | voc p2 |
%  |phase p1-2 | phase p1-s1(v) | f s1 | f p1 |

clear;
setPaths;
load('FEAresults.mat');
load('EXPresults.mat');