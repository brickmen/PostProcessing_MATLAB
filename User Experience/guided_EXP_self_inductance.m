% Guides user through setting EXP self inductance values
fprintf(' NOTE: \n  Self inductance for individual coils is set in <ux_measured_[p1/p2]> \n' )
fprintf(' these should be measured for a point in the middle of the dataset for optimal accuracy \n' )
fprintf('   \n' )
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
if ux_user_input == '1'
    fprintf(' Would you also like to set the Self Inductance values? \n' )
    ux_prompt = ' <1> yes, <> skip: ';
    ux_user_input = input(ux_prompt, 's');
    switch ux_user_input
        case '1'
            fprintf(' Guided EXP Self Inductance \n')
            guided_EXP_self_inductance;
        otherwise
            fprintf(' Skipped.\n')

    end
end