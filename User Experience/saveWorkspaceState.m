%Sets Path to save workspace as-is asking for user

fprintf('Saving Workspace to %s \n', ux_export_path)
fprintf('Set file name (omit .mat): ')
formatOut = 'dd-mm-yy_HH-MM';
ux_string = [datestr(now,formatOut), '-workspace'];
getUserValidStr;
if ux_user_input == 's'
    fprintf('Cancelling Save\n')
    return
end
fprintf('Filename chosen: %s\n', ux_string)
save( [ux_export_path ux_string '.mat']);
fprintf('Workspace saved to to %s%s%s \n', ux_export_path,ux_string, '.mat')






