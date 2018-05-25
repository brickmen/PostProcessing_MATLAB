% For an XY profile complete in Z (interp_input) this interpolates the remaining points to match the (interp_target) sampling XYZ points, outputs: interp_results

%set the suitable XY spacing to the dataset for meshgrid, should match or
%exceed the tatget XY resolution
x_spacing = 1;
y_spacing = 1;
interp_results = [0 0 0 0];

%Set gridddata limits, should match target dataset limits
x_max = max(interp_target(:,1));
x_min = min(interp_target(:,1));
y_max = max(interp_target(:,2));
y_min = min(interp_target(:,2));
%Set the Grid
[X,Y] = meshgrid(x_min:x_spacing:x_max,y_min:y_spacing:y_max);
% Griddata all z slices into structure
z_values = unique(interp_target(:,3));
self_s_z = struct;
for idx = 1:numel(z_values)
    i = z_values(idx);
    plotValues = interp_input(interp_input(:,3)==i,:);
    gridname = [ 'z' num2str(i)];
    self_s_z.(gridname)=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
    fprintf('Z self s contour of %4.2f done \n', i)
end
%look up the suitable results from structure
for i = 1:1:length(interp_target)
    
    interp_results(i,1:3) = interp_target(i,1:3) ;
    %find position in griddata
    I = find(X(1,:) == interp_results(i,1));
    J = find(Y(:,1) == interp_results(i,2));
    gridname = [ 'z' num2str(interp_results(i,3))];
    extracted_val = self_s_z.(gridname)(J,I);
    if isnan(extracted_val)
        extracted_val = min(min(self_s_z.(gridname),[],'omitnan'));
    end
    interp_results(i,4)  = extracted_val ;
    

end