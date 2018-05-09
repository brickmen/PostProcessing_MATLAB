% Sets single fixed EXP Self Inductance values set by this script at all points
% Definitions:
measured_p1 = 31.08
measured_p2 = 31.07

fprintf('Setting self Inductance values (total points %i): \n', length(exp_mutual_p1))
for i = 1:1:length(exp_mutual_p1)
    
    exp_self_p1(i,1:3) = exp_mutual_p1(i,1:3) ;
    exp_self_p1(i,4) = measured_p1 ;
    
    exp_self_p2(i,1:3) = exp_mutual_p1(i,1:3) ;
    exp_self_p2(i,4) = measured_p2 ;
    
    

end
fprintf('Done \n ')