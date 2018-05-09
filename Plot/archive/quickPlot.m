% Quicky plots given values in this script

addpath('.\Plot\');
plotSetup;

results = FEAmutual;
plotSetupRanges;

z_value_selected = 15;
plotZSliceContourRow2;


results = EXPmutNormTrimZcal;
%plotSetupRanges;


plotZSliceContour;


