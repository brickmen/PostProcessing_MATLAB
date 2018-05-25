% From some measured points <measured_self_source/pickup> this script will extract these values, apply symmetry, interopolate and set <exp_self_s/p>
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