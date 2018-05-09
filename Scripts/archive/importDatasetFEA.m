%Imports data from ANSYS and presents it in MATLAB matrix
%formatSpec = '%C%{yyyy-MM-dd HH:mm}D%f%f%{yyyy-MM-dd HH:mm}D%C';


index = 1;


filename1 = '1-s1-p1.csv';
readInTable;
filename1 = '2-s1-p1.csv';
readInTable;
filename1 = '3-s1-p1.csv';
readInTable;

results = import;
index = 1;
filename1 = '1-s1-p2.csv';
readInTable;
filename1 = '2-s1-p2.csv';
readInTable;
filename1 = '3-s1-p2.csv';
readInTable;

results(:, 5) = import(:,4);

%Tcompiled = array2table(results,'VariableNames',{'slide' 'offset' 'gap' 'm1' 'm2' 'unused'});