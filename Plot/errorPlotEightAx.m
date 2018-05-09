% Plots Errors for FE/EXP Values and plots summary in table

% i is from calling script "guided_error_plot_all_slices.m"
err_summary(i,:) = [ fea_z_value_selected, 0,0,0,0,0,0,0,0 ];
err_labels = [ "Z value", "Mutual P1", "Mutual P2", "Coupling Both", "Self S", "Self P1", "Self P2", "Coupling P1", "Coupling P2"];

fea_values= fea_mutual_p1;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
exp_values = exp_mutual_p1;
plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
err_summary(i,2) = mean2(Z_ax3);
plotTitle = ['FEA/EXP  Difference in Mutual P1, Z = ' num2str(fea_z_value_selected)];
contourf(ax1, X, Y,Z_ax3,8)
caxis(ax1,[-20 20])
xlabel(ax1,'Slide (X) Position')
ylabel(ax1,'Offset (Y) Position')
colorbar(ax1,'southoutside')
title(ax1,plotTitle )

fea_values= fea_mutual_p2;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
exp_values = exp_mutual_p2;
plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
err_summary(i,3) = mean2(Z_ax3);
plotTitle = ['FEA/EXP % Difference in Mutual P2, Z = ' num2str(fea_z_value_selected)];
contourf(ax2, X, Y,Z_ax3,8)
caxis(ax2,[-20 20])
xlabel(ax2,'Slide (X) Position')
ylabel(ax2,'Offset (Y) Position')
colorbar(ax2,'southoutside')
title(ax2,plotTitle )


fea_values= fea_coupling_both;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
exp_values = exp_coupling_both;
plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
err_summary(i,4) = mean2(Z_ax3);
plotTitle = ['FEA/EXP % Difference in Coupling Both, Z = ' num2str(fea_z_value_selected)];
contourf(ax3, X, Y,Z_ax3,8)
caxis(ax3,[-20 20])
xlabel(ax3,'Slide (X) Position')
ylabel(ax3,'Offset (Y) Position')
colorbar(ax3,'southoutside')
title(ax3,plotTitle )

fea_values= fea_self_s;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
exp_values = exp_self_s;
plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
err_summary(i,5) = mean2(Z_ax3);
plotTitle = ['FEA/EXP % Difference in Self S, Z = ' num2str(fea_z_value_selected)];
contourf(ax4, X, Y,Z_ax3,8)
caxis(ax4,[-20 20])
xlabel(ax4,'Slide (X) Position')
ylabel(ax4,'Offset (Y) Position')
colorbar(ax4,'southoutside')
title(ax4,plotTitle )


fea_values= fea_self_p1;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
exp_values = exp_self_p1;
plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
err_summary(i,6) = mean2(Z_ax3);
plotTitle = ['FEA/EXP % Difference in Self P1, Z = ' num2str(fea_z_value_selected)];
contourf(ax5, X, Y,Z_ax3,8)
caxis(ax5,[-20 20])
xlabel(ax5,'Slide (X) Position')
ylabel(ax5,'Offset (Y) Position')
colorbar(ax5,'southoutside')
title(ax5,plotTitle )


fea_values= fea_self_p2;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
exp_values = exp_self_p2;
plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
err_summary(i,7) = mean2(Z_ax3);
plotTitle = ['FEA/EXP % Difference in Self P2, Z = ' num2str(fea_z_value_selected)];
contourf(ax6, X, Y,Z_ax3,8)
caxis(ax6,[-20 20])
xlabel(ax6,'Slide (X) Position')
ylabel(ax6,'Offset (Y) Position')
colorbar(ax6,'southoutside')
title(ax6,plotTitle )


fea_values= fea_coupling_p1;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
exp_values = exp_coupling_p1;
plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
err_summary(i,8) = mean2(Z_ax3);
plotTitle = ['FEA/EXP % Difference in Coupling P1, Z = ' num2str(fea_z_value_selected)];
contourf(ax7, X, Y,Z_ax3,8)
caxis(ax7,[-20 20])
xlabel(ax7,'Slide (X) Position')
ylabel(ax7,'Offset (Y) Position')
colorbar(ax7,'southoutside')
title(ax7,plotTitle )

fea_values= fea_coupling_p2;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
exp_values = exp_coupling_p2;
plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
err_summary(i,9) = mean2(Z_ax3);
plotTitle = ['FEA/EXP % Difference in Coupling P2, Z = ' num2str(fea_z_value_selected)];
contourf(ax8, X, Y,Z_ax3,8)
caxis(ax8,[-20 20])
xlabel(ax8,'Slide (X) Position')
ylabel(ax8,'Offset (Y) Position')
colorbar(ax8,'southoutside')
title(ax8,plotTitle )

%make Graphs Pretty
ax1.XGrid = 'on';
ax1.YGrid = 'on';
ax1.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax1.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];

ax2.XGrid = 'on';
ax2.YGrid = 'on';
ax2.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax2.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];

ax3.XGrid = 'on';
ax3.YGrid = 'on';
ax3.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax3.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];

ax4.XGrid = 'on';
ax4.YGrid = 'on';
ax4.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax4.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];

ax5.XGrid = 'on';
ax5.YGrid = 'on';
ax5.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax5.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];

ax6.XGrid = 'on';
ax6.YGrid = 'on';
ax6.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax6.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];

ax7.XGrid = 'on';
ax7.YGrid = 'on';
ax7.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax7.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];

ax8.XGrid = 'on';
ax8.YGrid = 'on';
ax8.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax8.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];


