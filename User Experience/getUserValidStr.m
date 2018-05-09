% Asks user for valid string

fprintf(' Value Set: %s \n', ux_string)
ux_prompt = ' Use this? <y> to accept, <s> to cancel, or type an input: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case ''
        fprintf(' Accepting Default\n')
        ux_user_input = ux_string;
    case 'y'
        fprintf(' Accepting Default\n')
        ux_user_input = ux_string;
    case 's'
        fprintf(' Cancelling Input\n')
        return;
    otherwise
        fprintf(' New Input Accepted:  %s \n', ux_user_input )
        
end
ux_string = ux_user_input;
        
