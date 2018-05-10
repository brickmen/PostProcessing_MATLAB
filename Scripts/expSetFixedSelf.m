% Sets single fixed Self Inductance values  for every EXP position, inputs: measured, outputs: self_coil
% Definitions:

fprintf('Setting self Inductance values (total points %i): \n', length(exp_mutual_p1))
for i = 1:1:length(exp_mutual_p1)
    
    self_coil(i,1:3) = exp_mutual_p1(i,1:3) ;
    self_coil(i,4) = measured ;

    
end
fprintf('Done \n ')