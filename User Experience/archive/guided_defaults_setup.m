% Sets all the UX values with guidance

fprintf('FEA Results Import Path Selection\n')
ux_path = ux_fea_import_path;
getUserValidPath;
if ux_user_input == 's'
    fprintf('Cancelling Defaults Setup\n')
    return
end

fprintf('EXP Results Import Path')
ux_path = ux_exp_import_path;
getUserValidPath;
if ux_user_input == 's'
    fprintf('Cancelling Defaults Setup\n')
    return
end

fprintf('Save Workspace Path')
ux_path = ux_export_path;
getUserValidPath;
if ux_user_input == 's'
    fprintf('Cancelling Defaults Setup\n')
    return
end
