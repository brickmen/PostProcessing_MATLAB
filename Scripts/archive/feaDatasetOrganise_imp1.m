%Tidies up datasets from importDatasetFEAv2 combines them

%                  1        2       3       4       5       6       7
%                  
%result titles ["p1p1", "p2p2", "p1p2", "s1s1", "s1s2", "s2s2", "s1p1", "s1p2", "s2p1", "s2p2"];

struct_title =char(result_titles(7));
% import_1.(struct_title);

for i = 2:1:length(import_1.(struct_title))
   %Runs along every row of the results ignoring the zero row to start
   %The XYZ values should match so can be ignored
   
   %Mutual Inductance, a sum of all mutual values
   % summing 
   fea_mutual_p1(i-1,:) = [import_1.(char(result_titles(7)))(i,1) import_1.(char(result_titles(7)))(i,2) import_1.(char(result_titles(7)))(i,3) import_1.(char(result_titles(7)))(i,4)+import_1.(char(result_titles(9)))(i,4)];
   fea_mutual_p2(i-1,:) = [import_1.(char(result_titles(7)))(i,1) import_1.(char(result_titles(7)))(i,2) import_1.(char(result_titles(7)))(i,3) import_1.(char(result_titles(8)))(i,4)+import_1.(char(result_titles(10)))(i,4)];

   % Self inductance sourse of both selfs
   fea_self_s(i-1,:) = [import_1.(char(result_titles(7)))(i,1) import_1.(char(result_titles(7)))(i,2) import_1.(char(result_titles(7)))(i,3) import_1.(char(result_titles(4)))(i,4)+import_1.(char(result_titles(6)))(i,4)];
   
   fea_self_p1(i-1,:) = [import_1.(char(result_titles(7)))(i,1) import_1.(char(result_titles(7)))(i,2) import_1.(char(result_titles(7)))(i,3) import_1.(char(result_titles(1)))(i,4)];
   fea_self_p2(i-1,:) = [import_1.(char(result_titles(7)))(i,1) import_1.(char(result_titles(7)))(i,2) import_1.(char(result_titles(7)))(i,3) import_1.(char(result_titles(2)))(i,4)];
   
end