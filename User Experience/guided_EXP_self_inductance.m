% Guides user through setting EXP self inductance values
fprintf(' NOTE: \n  Self inductance for individual coils is set in <ux_measured_[p1/p2]> \n' )
fprintf(' these should be measured for a point in the middle of the dataset for optimal accuracy \n' )
fprintf('   \n' )

fprintf(' Ready to set fixed P1 P2 Self inductances of %4.2f and %4.2f? \n', ux_exp_measured_p1, ux_exp_measured_p2)
ux_prompt = ' <1> yes, <> skip: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        setEXPSelfP1P2;
    otherwise
        fprintf(' Skipped.\n')

end

fprintf(' How do you want to set combined self inductances? \n', ux_exp_measured_p1, ux_exp_measured_p2)
ux_prompt = ' <1> reuse existing and interpolate, <2> set single values, <3> use <measured_self_source/pickup>, <> skip: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        fprintf(' Reusing existing \n')
        reuseEXPSelfValues;
        % TODO#
    case '2'
        fprintf(' Setting Fixed Self S/P inductances of %4.2f and %4.2f uH \n', ux_exp_measured_s, ux_exp_measured_p)
        setEXPSelfSP;
    case '3'
        fprintf(' Using Measured Self Values \n')
        % Find all Z slices needed
        setEXPSelfSandPFromMeasured;
        
    otherwise
        fprintf(' Skipped.\n')

end