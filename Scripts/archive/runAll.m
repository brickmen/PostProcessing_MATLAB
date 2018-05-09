% Imports, reads in and exports all the data from the FEA models


exportSubFolder = 'ST Results\';
importDataset_ST;
plotSetup;
exportContoursAllZ;


exportSubFolder = 'TST Results\';
importDataset_TST;
plotSetup;
exportContoursAllZ;

exportSubFolder = 'DD Results\';
importDataset_DD;
plotSetup;
exportContoursAllZ;