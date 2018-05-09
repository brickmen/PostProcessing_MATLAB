% Calculates the Combined Coupling Value !!NOTE: Calclulation employed is in doubt
fprintf('Calculating combined coupling, Coupling values (total points %i) \n ', length(exp_mutual_p1))
for i = 1:1:length(exp_mutual_p1)
   
   %The XYZ values should match so can be ignored
   
   %Coupling is k = M/sqrt(L1*L2)
   
   k_b = (exp_mutual_p1(i,4)+exp_mutual_p2(i,4))/sqrt(exp_self_p(i,4)*exp_self_s(i,4));
   exp_coupling_both(i,:) = [exp_mutual_p2(i,1) exp_mutual_p2(i,2) exp_mutual_p2(i,3) k_b];

   
   
end
fprintf('Done \n ')