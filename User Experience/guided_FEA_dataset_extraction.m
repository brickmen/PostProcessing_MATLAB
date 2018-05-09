% Guides user through extracting data from the imports
fprintf(' FEA Import type ? \n' )
ux_prompt = '  <1> polarized symmetical, <2> non-polarized symmetical, <3> single symmetical, <0> skip: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        fprintf(' Polarized Dataset symmetical in Offset \n')
        feaExtractSymPolar;
    case '2'
        fprintf(' Non-Polarized Dataset symmetical in Offset \n')
        feaExtractSymNonPolar;
    case '3'
        fprintf(' Single Coil Dataset symmetical in Offset \n')
        feaExtractSymNonPolar;
    otherwise
        fprintf(' Skipped.\n')
        
end