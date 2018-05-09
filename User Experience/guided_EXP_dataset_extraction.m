% Guides user through extracting data from the imports
fprintf(' EXP Import: Please Check <ux_exp_calibration_[x/y/z]> values, these should refer to the XYZ offset of the (0,0,0) position \n' )
fprintf(' Calibration values currently ( %4.2f , %4.2f , %4.2f ) \n', ux_exp_calibration_x, ux_exp_calibration_y, ux_exp_calibration_z )
ux_prompt = ' <1> calibration correct and start extraction, <> skip: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        fprintf(' Polarized Dataset symmetical in Offset \n')
        expExtract;
    otherwise
        fprintf(' Skipped.\n')
        
end