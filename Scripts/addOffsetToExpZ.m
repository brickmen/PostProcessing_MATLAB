% Adds an offset to EXP Z values
exp_correction = 0.0;
fprintf('Linear Correction to EXP z values is : %4.1f \n', exp_correction)
for i = 1:1:length(exp_values)
    %Adds 2mm to the Exp z values
    exp_values(i,3) =  exp_values(i,3) + exp_correction;
end