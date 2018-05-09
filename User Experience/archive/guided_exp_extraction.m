%Sets Path to FEA/EXP datasets then imports them
addpath('.\Calculations\')

% XYZ calibration (where is (0,0,0))
x_offset = 0;
y_offset = 0;
z_offset = -25;


measured_p1 = 29.72; %values from LCR bridge in uH
measured_p2 = 29.72; %values from LCR bridge in uH
measured_s = 29.72 ; %values from LCR bridge in uH

% Mutual data point limits (above this is deleted as outlier)
Mp1_max = 70; %uH
Mp2_max = 70; %uH

expMutual;
expCoupling,


%note there are offsets applied in these scripts that may need adjusting