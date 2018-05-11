% Guides user through setting EXP self inductance values
fprintf(' NOTE: \n  Self inductance for individual coils is set in <ux_measured_[p1/p2]> \n' )
fprintf(' these should be measured for a point in the middle of the dataset for optimal accuracy \n' )
fprintf('   \n' )

fprintf(' Ready to set fixed P1 P2 Self inductances of %4.2f and %4.2f? \n', ux_exp_measured_p1, ux_exp_measured_p2)
ux_prompt = ' <1> yes, <> skip: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        fprintf(' Set P1 \n')
        measured = ux_exp_measured_p1;
        expSetFixedSelf;
        exp_self_p1 = self_coil;
        measured = ux_exp_measured_p2;
        expSetFixedSelf;
        exp_self_p2 = self_coil;
    otherwise
        fprintf(' Skipped.\n')

end

fprintf(' How do you want to set combined self inductances? \n', ux_exp_measured_p1, ux_exp_measured_p2)
ux_prompt = ' <1> use FEA Values, <2> set single values, <3> use <measured_self_source/pickup>, <> skip: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        fprintf(' Error Not yet Available \n')
        % TODO#
    case '2'
        fprintf(' Error Not yet Available \n')
        % TODO
    case '3'
        fprintf(' Using Measured Self Values \n')
        % Find all Z slices needed
        measured_values = measured_self_source;
        applyXYSymmetry;
        interp_target = exp_mutual_p1;
        interp_input = measured_values_symmetry;
        interpolateXYtoMatch;
        exp_self_s = interp_results;
        measured_values = measured_self_pickup;
        applyXYSymmetry;
        interp_target = exp_mutual_p1;
        interp_input = measured_values_symmetry;
        interpolateXYtoMatch;
        exp_self_p = interp_results;
        
    otherwise
        fprintf(' Skipped.\n')

end