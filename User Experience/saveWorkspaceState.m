%Sets Path to save workspace as-is asking for user
formatOut = 'dd-mm-yy_HH-MM';
string_pre = [datestr(now,formatOut), '-workspace'];
fprintf('Saving Workspace to %s %s_<comment>.mat\n', ux_export_path, string_pre)
fprintf('Add Comment to file name: ')
ux_string ='_';
getUserValidStr;
if ux_user_input == 's'
    fprintf('Cancelling Save\n')
    return
end
fprintf('Filename Addition chosen: %s\n', ux_string)
ux_string = [ string_pre '_' ux_string ];
save( [ux_export_path ux_string '.mat']);
fprintf('Workspace saved to to %s%s%s \n', ux_export_path,ux_string, '.mat')






