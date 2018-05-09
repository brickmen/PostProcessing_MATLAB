% Step 4: Use average of mutual inductance of slice to calculate z calibration value

averaging_min_mutual = 1; %values less than this are ingored
averaging_xy_range = [fea_x_range_start exp_x_range_end fea_y_range_start fea_y_range_end]; %averaging over this range


% Build a matrix of the sum and number of points with mutual exceeding
% target EXP
total_mutual_of_exp_z = zeros( length(exp_z_values), 5);
total_mutual_of_exp_z(:,1)=exp_z_values;

for i = 1:1:length(EXPmutualNormalizedTrim)
    if averaging_xy_range(1) <= EXPmutualNormalizedTrim(i,1) && EXPmutualNormalizedTrim(i,1) <= averaging_xy_range(2)
        if averaging_xy_range(3) <= EXPmutualNormalizedTrim(i,2) && EXPmutualNormalizedTrim(i,2) <= averaging_xy_range(4)
            %Value Within XY range
            if EXPmutualNormalizedTrim(i,4) >= averaging_min_mutual
                I = find(total_mutual_of_exp_z(:,1)== EXPmutualNormalizedTrim(i,3));
                total_mutual_of_exp_z(I,2) = total_mutual_of_exp_z(I,2) + EXPmutualNormalizedTrim(i,4);
                total_mutual_of_exp_z(I,3) = total_mutual_of_exp_z(I,3) + 1;
            end
            if EXPmutualNormalizedTrim(i,5) >= averaging_min_mutual
                I = find(total_mutual_of_exp_z(:,1)== EXPmutualNormalizedTrim(i,3));
                total_mutual_of_exp_z(I,4) = total_mutual_of_exp_z(I,4) + EXPmutualNormalizedTrim(i,5);
                total_mutual_of_exp_z(I,5) = total_mutual_of_exp_z(I,5) + 1;
            end
        end
    end
end

% Build a matrix of the sum and number of points with mutual exceeding
% target FEA
total_mutual_of_fea_z = zeros( length(fea_z_values), 5);
total_mutual_of_fea_z(:,1)=fea_z_values;

for i = 1:1:length(FEAmutual)
    if averaging_xy_range(1) <= FEAmutual(i,1) && FEAmutual(i,1) <= averaging_xy_range(2)
        if averaging_xy_range(3) <= FEAmutual(i,2) && FEAmutual(i,2) <= averaging_xy_range(4)
            %Value Within XY range
            if FEAmutual(i,4) >= averaging_min_mutual
                I = find(total_mutual_of_fea_z(:,1)== FEAmutual(i,3));
                total_mutual_of_fea_z(I,2) = total_mutual_of_fea_z(I,2) + FEAmutual(i,4);
                total_mutual_of_fea_z(I,3) = total_mutual_of_fea_z(I,3) + 1;
            end
            if FEAmutual(i,5) >= averaging_min_mutual
                I = find(total_mutual_of_fea_z(:,1)== FEAmutual(i,3));
                total_mutual_of_fea_z(I,4) = total_mutual_of_fea_z(I,4) + FEAmutual(i,5);
                total_mutual_of_fea_z(I,5) = total_mutual_of_fea_z(I,5) + 1;
            end
        end
    end
end

%average these results EXP
average_mutual_of_exp_z = zeros( length(exp_z_values), 3);
average_mutual_of_exp_z(:,1) = total_mutual_of_exp_z(:,1);
for i = 1:1:length(total_mutual_of_exp_z)
    average_mutual_of_exp_z(i,2) = total_mutual_of_exp_z(i,2)/total_mutual_of_exp_z(i,3);
    average_mutual_of_exp_z(i,3) = total_mutual_of_exp_z(i,4)/total_mutual_of_exp_z(i,5);
end


%average these results FEA
average_mutual_of_fea_z = zeros( length(fea_z_values), 3);
average_mutual_of_fea_z(:,1) = total_mutual_of_fea_z(:,1);
for i = 1:1:length(total_mutual_of_fea_z)
    average_mutual_of_fea_z(i,2) = total_mutual_of_fea_z(i,2)/total_mutual_of_fea_z(i,3);
    average_mutual_of_fea_z(i,3) = total_mutual_of_fea_z(i,4)/total_mutual_of_fea_z(i,5);
end

%find most similar z-values using residual differences
index = 1;
for i = 1:1:length(average_mutual_of_fea_z)
    for j = 1:1:length(average_mutual_of_exp_z)
    
        resid_p1 = 100*abs((average_mutual_of_fea_z(i,2) - average_mutual_of_exp_z(j,2))/average_mutual_of_exp_z(j,2));
        resid_p2 = 100*abs((average_mutual_of_fea_z(i,3) - average_mutual_of_exp_z(j,3))/average_mutual_of_exp_z(j,2));
        average_mutual_residuals(index,:) = [ average_mutual_of_fea_z(i,1) average_mutual_of_exp_z(j,1) resid_p1 resid_p2];
    
        index = index+1;
    end
    
end

I = find(average_mutual_residuals(:,3)== min(average_mutual_residuals(:,3)));
J = find(average_mutual_residuals(:,4)== min(average_mutual_residuals(:,4)));

if I == J
    fprintf('Closest Z match for BOTH: FEA = %4.2f , EXP = %4.2f residual error (%%) %4.2f , %4.2f \n', average_mutual_residuals(I,1),average_mutual_residuals(I,2), average_mutual_residuals(I,3), average_mutual_residuals(I,4))

    delta_exp_z = average_mutual_residuals(I,1) - average_mutual_residuals(I,2);
else
    fprintf('Closest Z match for P1: FEA = %4.2f , EXP = %4.2f residual error (%%) %4.2f , %4.2f \n', average_mutual_residuals(I,1),average_mutual_residuals(I,2), average_mutual_residuals(I,3), average_mutual_residuals(I,4))

    fprintf('Closest Z match for P2: FEA = %4.2f , EXP = %4.2f residual error (%%) %4.2f , %4.2f \n', average_mutual_residuals(J,1),average_mutual_residuals(J,2), average_mutual_residuals(J,3), average_mutual_residuals(J,4))

    combined_resid_p1 = average_mutual_residuals(I,3) + average_mutual_residuals(I,4);
    combined_resid_p2 = average_mutual_residuals(J,3) + average_mutual_residuals(J,4);
    fprintf('Using lowest combined residual combination \n')
    if combined_resid_p1 <= combined_resid_p2
        delta_exp_z = average_mutual_residuals(I,1) - average_mutual_residuals(I,2);
    else
        delta_exp_z = average_mutual_residuals(J,1) - average_mutual_residuals(J,2);
    end
end

fprintf('Z offset to EXP is %4.2f \n' ,delta_exp_z)
for i = 1:1:length(EXPmutualNormalizedTrim)

        EXPmutNormTrimZcal(i,:) = [ EXPmutualNormalizedTrim(i,1) EXPmutualNormalizedTrim(i,2) EXPmutualNormalizedTrim(i,3)+delta_exp_z EXPmutualNormalizedTrim(i,4) EXPmutualNormalizedTrim(i,5) ];

end

%reset Z ranges
exp_z_range_start = min(EXPmutNormTrimZcal(:,3));
exp_z_range_end = max(EXPmutNormTrimZcal(:,3));
exp_z_values = unique(EXPmutNormTrimZcal(:,3) );
fprintf('EXP Z range min: %4.2f max: %4.2f number of measurements %i \n', exp_z_range_start, exp_z_range_end, length(exp_z_values))


