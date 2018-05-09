%% Imports data from ANSYS and presents it in MATLAB matrix. Version 2 is configured to work with 2 runs of 4 datasets with each separated into the coils it referrs to
%formatSpec = '%C%{yyyy-MM-dd HH:mm}D%f%f%{yyyy-MM-dd HH:mm}D%C';
%%

gap_nominal = 46; %mm
offset_nominal = 0; %mm

filen_prefix = 'alex_1-';
filen_prefix2 = 'alex_2-';

filen_mid = ["p1p1", "p2p2", "p1p2", "s1s1", "s1s2", "s2s2", "s1p1", "s1p2", "s2p1", "s2p2"];
chr_filen_mid = cellstr(filen_mid);
filen_suffix = '-';

filen_ext = '.csv';

warning('off','all')
warning

import_1 = struct;
for i = 1:1:length(filen_mid)
    
    struct_title =char(filen_mid(i));
    import_1.(struct_title) = zeros(1,4);
    for j = 1:1:4
        filename1 = strcat(filen_prefix, filen_mid(i), filen_suffix, num2str(j),filen_ext);
        fprintf('Loading File: %s', filename1)
        readInTable;
        import_1.(struct_title) = [import_1.(struct_title);import];
        fprintf(' total length now %i \n', length(import_1.(struct_title)))
    end 
end

import_2 = struct;
for i = 1:1:length(filen_mid)
    
    struct_title =char(filen_mid(i));
    import_2.(struct_title) = zeros(1,4);
    for j = 1:1:4
        filename1 = strcat(filen_prefix2, filen_mid(i), filen_suffix, num2str(j),filen_ext);
        fprintf('Loading File: %s', filename1)
        readInTable;
        import_2.(struct_title) = [import_2.(struct_title);import];
        fprintf(' --- total variable length now %i \n', length(import_2.(struct_title)))
    end 
end

warning('on','all')
warning('query','all')

result_titles = filen_mid ;

fprintf(' Completed Loading All datasets into structures import_X please check all dimensions match \n')
clearvars -except exportPath import_1 import_2 result_titles
