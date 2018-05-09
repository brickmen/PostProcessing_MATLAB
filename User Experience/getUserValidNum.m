% Asks user for number

fprintf(' Value Set: %f \n', ux_int)
ux_prompt = ' Use this? <return> to accept, <s> to cancel, or type an input: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case ''
        fprintf(' Accepting Default\n')
        ux_user_input = ux_int;
    case 's'
        fprintf(' Cancelling Input\n')
        return;
    otherwise
        [num, status] = str2num(ux_user_input);
        if status
            fprintf(' New Input Accepted:  %f \n', num )
            
        else
            fprintf(' Invalid input Cancelling\n')
            ux_user_input = 's';
            return;
        end
        
        
end
ux_int = str2num(ux_user_input);
        
