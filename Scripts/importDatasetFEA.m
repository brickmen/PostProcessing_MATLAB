% Reads in multiple CSVs (defined in ux_fea_import_*) into the fea_import structure
addpath(ux_fea_import_path);
% If the value for gap or offset is missing, then the nominal values are
% used
gap_nominal = 45 %mm
offset_nominal = 0 %mm

warning('off','all')
warning

incompleteDatasetFlag = 0;

fea_import = struct;
for i = 1:1:length(ux_fea_import_mid)
    
    struct_title =char(ux_fea_import_mid(i));
    fea_import.(struct_title) = zeros(1,4);
    for j = 1:1:ux_fea_import_quant
        filename = strcat(ux_fea_import_prefix, ux_fea_import_mid(i), ux_fea_import_suffix, num2str(j),ux_fea_import_ext);
        fprintf('Loading File: %s \n', filename)
        if exist(filename)
            readInTable;
            fea_import.(struct_title) = [fea_import.(struct_title);import];
        else
            fprintf('File Does Not Exist Skipping: %s \n', filename)
            incompleteDatasetFlag = 1;
        end
        fprintf(' -- total length now %i \n', length(fea_import.(struct_title)))
    end 
    %delete all zero row 1
    fea_import.(struct_title)(1,:) = [];
end

if incompleteDatasetFlag == 1
    for i = 1:1:length(ux_fea_import_mid)
        struct_title =char(ux_fea_import_mid(i));
        if length(fea_import.(struct_title))==0
            fea_import.(struct_title) = fea_import.s1s1;
            fea_import.(struct_title)(:,4) = 0;
        end
    end
end

warning('on','all')
warning('query','all')


fprintf(' Completed Loading All datasets into structure please check all dimensions match \n')
%clearvars -except exportPath import_1 import_2 result_titles
