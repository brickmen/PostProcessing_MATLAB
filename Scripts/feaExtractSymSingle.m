% Extracts data from FEA for Single mode with Symmetry

%                  1        2       3       4       5       6       7
%                  
%result titles ["p1p1", "p2p2", "p1p2", "s1s1", "s1s2", "s2s2", "s1p1", "s1p2", "s2p1", "s2p2"];

struct_title =char(ux_fea_import_mid(7));
% fea_import.(struct_title);

for i = 1:1:length(fea_import.(struct_title))
   
   %The XYZ values should match so can be ignored
   
   %Mutual Inductance, a sum of all mutual values
   % summing 
   fea_mutual_p1(i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) fea_import.(char(ux_fea_import_mid(7)))(i,4)];
   fea_mutual_p2(i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) fea_import.(char(ux_fea_import_mid(8)))(i,4)];

   % Self inductance sourse of both selfs plus mutual
   Ms1 =fea_import.(char(ux_fea_import_mid(4)))(i,4);
   fea_self_s(i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) Ms1];
   
   fea_self_p1(i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) fea_import.(char(ux_fea_import_mid(1)))(i,4)];
   fea_self_p2(i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) fea_import.(char(ux_fea_import_mid(2)))(i,4)];
   fea_self_p(i,:) = fea_self_p1(i,:);
end
j = i;
%Run again for symmetry in offset
for i = 1:1:length(fea_import.(struct_title))
   
   %The XYZ values should match so can be ignored
   
   %Mutual Inductance, a sum of all mutual values
   % summing 
   fea_mutual_p1(j+i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) -fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) fea_import.(char(ux_fea_import_mid(7)))(i,4)];
   fea_mutual_p2(j+i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) -fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) fea_import.(char(ux_fea_import_mid(8)))(i,4)];

   % Self inductance sourse of both selfs
   Ms1 =fea_import.(char(ux_fea_import_mid(4)))(i,4);
   fea_self_s(j+i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) -fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) Ms1];
   
   fea_self_p1(j+i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) -fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) fea_import.(char(ux_fea_import_mid(1)))(i,4)];
   fea_self_p2(j+i,:) = [fea_import.(char(ux_fea_import_mid(7)))(i,1) -fea_import.(char(ux_fea_import_mid(7)))(i,2) fea_import.(char(ux_fea_import_mid(7)))(i,3) fea_import.(char(ux_fea_import_mid(2)))(i,4)];
   fea_self_p(j+i,:) = fea_self_p1(j+i,:);
end