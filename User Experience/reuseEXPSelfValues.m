% Takes old <old_exp_self_s/p> values and interpolates to new dataset, outputs: <exp_self_s/p>
interp_target = exp_mutual_p1;

old_exp_self_s = exp_self_s;
interp_input = old_exp_self_s;
fprintf(' Interpolating Z values (simple mode)\n')
interpolateZtoMatch;
interp_input = interp_results;
fprintf(' Interpolating XY values (grid mode)\n')
interpolateXYtoMatch;
exp_self_s = interp_results;
old_exp_self_p = exp_self_p;
interp_input = old_exp_self_p;
fprintf(' Interpolating Z values (simple mode)\n')
interpolateZtoMatch;
interp_input = interp_results;
fprintf(' Interpolating XY values (grid mode)\n')
interpolateXYtoMatch;
exp_self_p = interp_results;