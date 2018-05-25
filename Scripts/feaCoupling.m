%takes results from FEA and works out Coupling

%                  1        2       3       4       5       6       7
%                  
%result titles ["p1p1", "p2p2", "p1p2", "s1s1", "s1s2", "s2s2", "s1p1", "s1p2", "s2p1", "s2p2"];



for i = 1:1:length(fea_mutual_p1)
   
   %The XYZ values should match so can be ignored
   
   %Coupling is k = M/sqrt(L1*L2)
   %
   k_p1 = abs(fea_mutual_p1(i,4)/sqrt(fea_self_p1(i,4)*fea_self_s(i,4)));
   k_p2 = abs(fea_mutual_p2(i,4)/sqrt(fea_self_p2(i,4)*fea_self_s(i,4)));
   fea_coupling_p1(i,:) = [fea_mutual_p1(i,1) fea_mutual_p1(i,2) fea_mutual_p1(i,3) k_p1];
   fea_coupling_p2(i,:) = [fea_mutual_p2(i,1) fea_mutual_p2(i,2) fea_mutual_p2(i,3) k_p2];
   
   
   k_b = abs((fea_mutual_p1(i,4)+fea_mutual_p2(i,4))/sqrt(fea_self_p(i,4)*fea_self_s(i,4)));
   fea_coupling_both(i,:) = [fea_mutual_p1(i,1) fea_mutual_p1(i,2) fea_mutual_p1(i,3) k_b];

   
   
end