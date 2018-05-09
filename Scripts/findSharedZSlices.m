% find matching z-slices in FEA/Exp outputs: shared_z_values
fea_z_values = unique(fea_values(:,3));
exp_z_values = unique(exp_values(:,3));


%find z values that have a matching set in both EXP and FEA
shared_z_values=0;
index=1;
for i = 1:1:length(fea_z_values)
    if ismember(fea_z_values(i), exp_z_values(:))
        shared_z_values(index)=  fea_z_values(i);
        index = index +1;
    end
end
fprintf('Shared z values in both sets are:')
disp(shared_z_values)