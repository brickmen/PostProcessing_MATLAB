% Plots error trends AFTER all error slices have been plotted

% i is from calling script "guided_error_plot_all_slices.m"


figure(2);

err_labels = [ "Z value", "Mutual to Pickup 1 (M_P_1)", "Mutual to Pickup 2 (M_P_2)", "Coupling (k)", "Self Source (L_S)", "Self Pickup 1 (L_P_1)", "Self Pickup 2 (L_P_2)", "Coupling to Pickup 1", "Coupling to Pickup 2"];

plotTitle = ['FE Difference to EXP values, XY average Z Trend'];
plot( err_summary(:,1),err_summary(:,2), '--o',err_summary(:,1),err_summary(:,3), '--o',err_summary(:,1),err_summary(:,4),err_summary(:,1),err_summary(:,5),':*',err_summary(:,1),err_summary(:,6),':*',err_summary(:,1),err_summary(:,7),':*','LineWidth',2)
xlabel('Gap (Z) Position')
ylabel('Percentage Difference (%)')
title(plotTitle )
legend(err_labels(2:7), 'Location','best') 

%colour region of acceptance
%patch([min(shared_z_values) max(shared_z_values) max(shared_z_values) min(shared_z_values)],[-10 -10 10 10],'g')
%set(gca,'children',flipud(get(gca,'children')))
% fillx = [min(shared_z_values), max(shared_z_values)];
% filly = [-10, 10];
% fill(fillx, filly, 'g');

set(gca,'XGrid','on', 'YGrid','on')
% XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
% YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
set(gcf,'color','w');
 

%legend("Acceptable Region", err_labels(2:9))
