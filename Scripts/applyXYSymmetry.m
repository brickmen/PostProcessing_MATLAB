%Applies XY Symmetry to values for measured inductance (measured_values), outputs: measured_values_symmetry

mss_unique_z = unique(measured_values(:,3));
mss_unique_y = unique(measured_values(:,2));
mss_unique_x = unique(measured_values(:,1));
mss_total= length(mss_unique_x)*length(mss_unique_y)*length(mss_unique_z)

index = 1
for i = 1:1:length(mss_unique_x)
    for j = 1:1:length(mss_unique_z)
        
        I = find(measured_values(:,1)==mss_unique_x(i) & measured_values(:,2)==mss_unique_x(i) & measured_values(:,3)==mss_unique_z(j));
        value = measured_values(I,4);
        
        measured_values_symmetry(index,:) = [ mss_unique_x(i) mss_unique_y(i) mss_unique_z(j) value];
        index = index +1;
        if mss_unique_x(i) > 1
           
            measured_values_symmetry(index,:) = [ -mss_unique_x(i) mss_unique_y(i) mss_unique_z(j) value];
            index = index +1;

            measured_values_symmetry(index,:) = [ -mss_unique_x(i) -mss_unique_y(i) mss_unique_z(j) value];
            index = index +1;

            measured_values_symmetry(index,:) = [ mss_unique_x(i) -mss_unique_y(i) mss_unique_z(j) value];
            index = index +1;
            
        end
    end
end


% % Optional Apply Offset of 25 to values
% measured_values_symmetry_offset(:,3) = measured_values_symmetry(:,3) + 25 ;