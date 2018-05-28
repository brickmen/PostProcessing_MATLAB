%Saves all <ux_*> variables to defaults.mat
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
save( [ux_string '.mat'], 'fea_*' );
fprintf('fea_* Workspace saved to to %s%s \n', ux_string, '.mat')






