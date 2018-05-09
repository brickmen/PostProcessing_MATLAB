% Guides user through import Script
fprintf('Ready to Import Files, please check the <ux_*> values now \n' )
fprintf(' Particulary any containing "import" \n' )
fprintf(' What would you like to import? \n' )
ux_prompt = '  <1> FEA only, <2> EXP only, <3> both, <0> cancel: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '0'
        fprintf(' Cancelling\n')
        return
    case '1'
        fprintf(' FEA Only Import \n')
        importDatasetFEA;
    case '2'
        fprintf(' EXP Only Import \n')
        importDatasetEXP;
    case '3'
        fprintf(' Both Import \n')
        importDatasetFEA;
        importDatasetEXP;
    otherwise
        fprintf(' Cancelling\n')
        return
   
end
fprintf(' Would you like to extract the imported FEA datasets into mutual/self values? \n' )
ux_prompt = '  <1> yes, <0> no: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input  
    case '1'
        fprintf(' Dataset Extraction Started \n')
        guided_FEA_dataset_extraction;
    otherwise
        fprintf(' Skipped\n')
        
end
fprintf(' Would you like to extract the imported EXP datasets into mutual/self/phase/voltage/current values? \n' )
ux_prompt = '  <1> yes, <0> no: ';
ux_user_input = input(ux_prompt, 's');
switch ux_user_input
    case '1'
        fprintf(' Dataset Extraction Started \n')
        guided_EXP_dataset_extraction;
    otherwise
        fprintf(' Skipped\n')

end