% For profile complete in Z (interp_input) this averages the neighbouring Z values for each XY point known, outputs: interp_results

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

if exist('z_missing')
% Assumes Equal spacing between Z and that there is a value above and below
% every missing point to pick values
x_values_now = unique(interp_input(:,1));
y_values_now = unique(interp_input(:,2));
index = 1;
input = interp_input;
for idx = 1:numel(x_values_now)
    for idy = 1:numel(y_values_now)
        for idz = 1:numel(z_values_target)
            if ismember(z_values_target(idz), z_missing)

                match(1,:) = [x_values_now(idx) y_values_now(idy) z_values_target(idz+1) 0];
                matchXYZlookup;
                value_above = output(1,4);
                match(1,:) = [x_values_now(idx) y_values_now(idy) z_values_target(idz-1) 0];
                matchXYZlookup;
                value_below = output(1,4);
                interploted_value = (value_above + value_below)/2;
                interp_addition(index,:) = [x_values_now(idx) y_values_now(idy) z_values_target(idz) interploted_value];
                index = index +1;
            end
        end
    end
end
interp_results = [interp_input; interp_addition];
else
interp_results = interp_input;
end





