% Extracts raw results from the EXP datasets made by MATLAB measuring script

fprintf('Extracting Experimental Values Directly Into Workspace \n ')
ux_wb = waitbar(0,'Please Wait...' );
index = 1;
for i = 1:1:length(exp_import)
    ux_wb_msg = [ 'Please Wait: Extracting EXP Values Directly Into Workspace '];
    ux_wb_progress = i / length(exp_import);
    waitbar(ux_wb_progress,ux_wb,ux_wb_msg)
    Mp1 = 1000000* exp_import(i,6) /  (exp_import(i,5)*2*pi*exp_import(i,11));
    Mp2 = 1000000* exp_import(i,7) /  (exp_import(i,5)*2*pi*exp_import(i,11));
    x_value = exp_import(i,1) + ux_exp_calibration_x;
    y_value = exp_import(i,2) + ux_exp_calibration_y;
    z_value = exp_import(i,3) + ux_exp_calibration_z;
    if Mp1 > Mp1_max || Mp2 > Mp2_max
        fprintf('Mutual exceeds max limits at index %i data point ignored. Consider testing for outliers or reducing data set \n', i)
    else
        exp_mutual_p1(index,:) = [ x_value y_value z_value Mp1];
        exp_mutual_p2(index,:) = [ x_value y_value z_value Mp2];
        
        exp_phase_p1(index,:) = [ x_value y_value z_value exp_import(i,8)];
        exp_phase_p2(index,:) = [ x_value y_value z_value exp_import(i,9)];
        exp_phase_src_iv(index,:) = [ x_value y_value z_value exp_import(i,10)];
        exp_source_v(index,:) = [ x_value y_value z_value exp_import(i,4)];
        exp_source_i(index,:)  = [ x_value y_value z_value exp_import(i,5)];
        exp_freq(index,:) = [ x_value y_value z_value exp_import(i,11)];

        index = index+1;
    end
end
fprintf('Done \n ')
close(ux_wb)