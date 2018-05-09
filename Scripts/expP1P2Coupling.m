% Calculates Coupling for P1 and P2 separately


fprintf('Calculating P1,P2, Coupling values (total points %i) \n ', length(exp_mutual_p1))
for i = 1:1:length(exp_mutual_p1)
   %The XYZ values should match so can be ignored
   %Coupling is k = M/sqrt(L1*L2)
   %
   k_p1 = exp_mutual_p1(i,4)/sqrt(exp_self_p1(i,4)*exp_self_s(i,4));
   k_p2 = exp_mutual_p2(i,4)/sqrt(exp_self_p2(i,4)*exp_self_s(i,4));
   exp_coupling_p1(i,:) = [exp_mutual_p1(i,1) exp_mutual_p1(i,2) exp_mutual_p1(i,3) k_p1];
   exp_coupling_p2(i,:) = [exp_mutual_p2(i,1) exp_mutual_p2(i,2) exp_mutual_p2(i,3) k_p2];
   
   k_b = exp_mutual_p2(i,4)/sqrt(exp_self_p(i,4)*exp_self_s(i,4));
   exp_coupling_both(i,:) = [exp_mutual_p1(i,1) exp_mutual_p1(i,2) exp_mutual_p1(i,3) k_b];
    
   
end
fprintf('Done \n ')