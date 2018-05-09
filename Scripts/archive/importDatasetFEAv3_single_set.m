%
%%

gap_nominal = 46; %mm
offset_nominal = 0; %mm

ux_fea_import_prefix = 'alex_3-';

ux_fea_import_quant = 2; %number of files it is split into

ux_fea_import_mid = ["p1p1", "p2p2", "p1p2", "s1s1", "s1s2", "s2s2", "s1p1", "s1p2", "s2p1", "s2p2"];
chr_ux_fea_import_mid = cellstr(ux_fea_import_mid);
filen_suffix = '-';

ux_fea_import_ext = '.csv';

warning('off','all')
warning

fea_import = struct;
for i = 1:1:length(ux_fea_import_mid)
    
    struct_title =char(ux_fea_import_mid(i));
    fea_import.(struct_title) = zeros(1,4);
    for j = 1:1:ux_fea_import_quant
        filename1 = strcat(ux_fea_import_prefix, ux_fea_import_mid(i), filen_suffix, num2str(j),ux_fea_import_ext);
        fprintf('Loading File: %s', filename1)
        readInTable;
        fea_import.(struct_title) = [fea_import.(struct_title);import];
        fprintf(' -- total length now %i \n', length(fea_import.(struct_title)))
    end 
end

warning('on','all')
warning('query','all')


fprintf(' Completed Loading All datasets into structure please check all dimensions match \n')
%clearvars -except exportPath import_1 import_2 result_titles
