% Step 5: Setup Nomalised XY Mesh at matching Z sets

%find z values that have a matching set in both EXP and FEA
index=1;
for i = 1:1:length(fea_z_values)
    if ismember(fea_z_values(i), exp_z_values(:))
        shared_z_values(index)=  fea_z_values(i);
        index = index +1;
    end
end
fprintf('Shared z values in both sets are:')
disp(shared_z_values)

mg_fea_p1 = struct;
mg_fea_p2 = struct;
mg_exp_p1 = struct;
mg_exp_p2 = struct;
%setup Meshgrid, 5x5mm linear interpolated
% NOTE: XY limits must be set to those of smallest data set
[X,Y] = meshgrid(fea_x_range_start:5:exp_x_range_end,fea_y_range_start:5:fea_y_range_end);
for i = 1:1:length(shared_z_values)
    mg_title = ['z' num2str(shared_z_values(i))];
    selectedValues = EXPmutNormTrimZcal(EXPmutNormTrimZcal(:,3)==shared_z_values(i),:);
    mg_exp_p1.(mg_title)=griddata(selectedValues(:,1),selectedValues(:,2),selectedValues(:,4),X,Y);
    mg_exp_p2.(mg_title)=griddata(selectedValues(:,1),selectedValues(:,2),selectedValues(:,5),X,Y);
   
    selectedValues = FEAmutual(FEAmutual(:,3)==shared_z_values(i),:);
    mg_fea_p1.(mg_title)=griddata(selectedValues(:,1),selectedValues(:,2),selectedValues(:,4),X,Y);
    mg_fea_p2.(mg_title)=griddata(selectedValues(:,1),selectedValues(:,2),selectedValues(:,5),X,Y);
end