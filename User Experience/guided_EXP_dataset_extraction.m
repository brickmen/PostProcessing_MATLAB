% Guides user through extracting data from the EXP import
fprintf(' EXP Import: Please Check <ux_exp_calibration_[x/y/z]> values, these should refer to the XYZ offset of the (0,0,0) position \n' )
fprintf(' Calibration values currently ( %4.2f , %4.2f , %4.2f ) \n', ux_exp_calibration_x, ux_exp_calibration_y, ux_exp_calibration_z )
fprintf(' Max mutual inductance values currently  %4.2f  and %4.2f uH ) \n', ux_exp_mp1_max, ux_exp_mp2_max) 

ux_prompt = ' <1> calibration correct and start extraction, <> skip: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        fprintf(' Extracting \n')
        expExtract;
    otherwise
        fprintf(' Skipped.\n')
        
end
if ux_user_input == '1'
    fprintf(' Would you also like to set the EXP Self Inductance values? \n' )
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
if ux_user_input == '1'
    fprintf(' Would you also like to Calculate EXP Coupling values? \n' )
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