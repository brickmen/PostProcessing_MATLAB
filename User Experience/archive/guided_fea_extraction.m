%Sets Path to FEA/EXP datasets then imports them
addpath('.\Calculations\')
ux_prompt = ' Apply Symmetry in offset? <y> yes, <n> no: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case 'y'
        fprintf(' Extracting fea_import with symmetry\n')
        feaDatasetOrganise_symmetry;
    case 'n'
        fprintf(' Extracting fea_import without symmetry\n')
        feaDatasetOrganise;
    otherwise
        fprintf(' Cancelling Data Extraction\n')
        return
        
end
feaCoupling;


