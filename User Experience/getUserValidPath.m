% Keeps Trying for user to give a valid path and it exists
ux_valid = false;
for ux_tries = 1:1:5
    if ux_valid
        
    else
        fprintf(' Path Set: %s attempt %i of 5\n', ux_path, ux_tries)
        ux_prompt = ' Use default Path? <y> to accept, <s> to skip this import, or type a path: ';
        ux_user_input = input(ux_prompt, 's');
        switch ux_user_input
            case ''
                fprintf(' Accepting Default\n')
                ux_user_input = ux_path;
            case 'y'
                fprintf(' Accepting Default\n')
                ux_user_input = ux_path;
            case 's'
                fprintf(' Cancelling selection of directory\n')
                break;
            otherwise
                fprintf(' Testing Path \n')
                
        end
        if exist(ux_user_input, 'dir') 
            ux_valid = true;
            ux_path = ux_user_input;
        else
            fprintf(' ERROR Path Not found, please try again \n')
        end
        if ux_valid
            fprintf( ' Input Accepted and is valid path: %s \n', ux_path)
        end
    end
    
end