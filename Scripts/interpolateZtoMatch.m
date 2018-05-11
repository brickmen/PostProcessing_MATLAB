% NON FUNCTIONAL! For profile complete in Z (interp_input) this averages the neighbouring Z values for each XY point known, outputs: interp_results

z_values_target = unique(interp_target(:,3));
z_values_now = unique(interp_input(:,3));

index = 1;
for idx = 1:numel(z_values_target)
    i = z_values_target(idx);
    if ismember(i, z_values_now)
        fprintf('Z %4.2f is present in both sets\n ', i)
    else
        fprintf('Z %4.2f is missing\n ', i)
        z_missing(index) = i;
        index = index +1;
    end
    
end