%Saves all <ux_*> variables to defaults.mat

ux_string = 'defaults';
save( [ux_string '.mat'], 'ux_*' );
fprintf('ux_* Workspace saved to to %s%s \n', ux_string, '.mat')






