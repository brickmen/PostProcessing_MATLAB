% Plots error trends AFTER all error slices have been plotted

% i is from calling script "guided_error_plot_all_slices.m"


figure(2);


plotTitle = ['FE values vs EXP values, Difference Trends for all Z'];
plot( err_summary(:,1),err_summary(:,2), '--o',err_summary(:,1),err_summary(:,3), '--o',err_summary(:,1),err_summary(:,4),err_summary(:,1),err_summary(:,5),':*',err_summary(:,1),err_summary(:,6),':*',err_summary(:,1),err_summary(:,7),':*',err_summary(:,1),err_summary(:,8), err_summary(:,1),err_summary(:,9),'LineWidth',2)
xlabel('Gap (Z) Position')
ylabel('Percentage Difference')
title(plotTitle )
legend(err_labels(2:9), 'Location','best') 

%colour region of acceptance
%patch([min(shared_z_values) max(shared_z_values) max(shared_z_values) min(shared_z_values)],[-10 -10 10 10],'g')
%set(gca,'children',flipud(get(gca,'children')))
% fillx = [min(shared_z_values), max(shared_z_values)];
% filly = [-10, 10];
% fill(fillx, filly, 'g');

XGrid = 'on';
YGrid = 'on';
XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
 

%legend("Acceptable Region", err_labels(2:9))
