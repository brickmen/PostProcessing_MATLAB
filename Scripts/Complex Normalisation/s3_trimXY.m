% Step 3: Trim range of XY EXP results and match up datasets


% find FEA range and sample rate
fea_x_range_start = min(FEAmutual(:,1));
fea_x_range_end = max(FEAmutual(:,1));
fea_x_values = unique( FEAmutual(:,1) );
fea_x_spacing = fea_x_values(2)-fea_x_values(1);
fprintf('FEA X range min: %4.2f max: %4.2f number of measurements %i spacing: %4.2f \n', fea_x_range_start, fea_x_range_end, length(fea_x_values), fea_x_spacing)

fea_y_range_start = min(FEAmutual(:,2));
fea_y_range_end = max(FEAmutual(:,2));
fea_y_values = unique( FEAmutual(:,2) );
fea_y_spacing = fea_y_values(2)-fea_y_values(1);
fprintf('FEA Y range min: %4.2f max: %4.2f number of measurements %i spacing: %4.2f \n', fea_y_range_start, fea_y_range_end, length(fea_y_values), fea_y_spacing)

fea_z_range_start = min(FEAmutual(:,3));
fea_z_range_end = max(FEAmutual(:,3));
fea_z_values = unique( FEAmutual(:,3) );
fprintf('FEA Z range min: %4.2f max: %4.2f number of measurements %i \n', fea_z_range_start, fea_z_range_end, length(fea_z_values))

fea_NoOfPoints = length(FEAmutual);

%trim p1 exp matrix to XY fea range
index = 1;
for i = 1:1:length(EXPmutualNormalized)
    if fea_x_range_start <= EXPmutualNormalized(i,1) && EXPmutualNormalized(i,1) <= fea_x_range_end
        if fea_y_range_start <= EXPmutualNormalized(i,2) && EXPmutualNormalized(i,2) <= fea_y_range_end
            EXPmutualNormalizedTrim(index,:) = EXPmutualNormalized(i,:);
            index = index +1;
        end
    end
end

%find exp limits
exp_x_range_start = min(EXPmutualNormalizedTrim(:,1));
exp_x_range_end = max(EXPmutualNormalizedTrim(:,1));
exp_x_values = unique(EXPmutualNormalizedTrim(:,1) );
exp_x_spacing = exp_x_values(2)-exp_x_values(1);
fprintf('EXP X range min: %4.2f max: %4.2f number of measurements %i spacing: %4.2f \n', exp_x_range_start, exp_x_range_end, length(exp_x_values), exp_x_spacing)

exp_y_range_start = min(EXPmutualNormalizedTrim(:,2));
exp_y_range_end = max(EXPmutualNormalizedTrim(:,2));
exp_y_values = unique(EXPmutualNormalizedTrim(:,2) );
exp_y_spacing = exp_y_values(2)-exp_y_values(1);
fprintf('EXP Y range min: %4.2f max: %4.2f number of measurements %i spacing: %4.2f \n', exp_y_range_start, exp_y_range_end, length(exp_y_values), exp_y_spacing)

exp_z_range_start = min(EXPmutualNormalizedTrim(:,3));
exp_z_range_end = max(EXPmutualNormalizedTrim(:,3));
exp_z_values = unique(EXPmutualNormalizedTrim(:,3) );
fprintf('EXP Z range min: %4.2f max: %4.2f number of measurements %i \n', exp_z_range_start, exp_z_range_end, length(exp_z_values))

exp_NoOfPoints = length(EXPmutualNormalizedTrim);

