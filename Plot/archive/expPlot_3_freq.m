% Plots values for FEA study version 3

results = exp_mutual_p1;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Mutual to Pickup 1 (uH), Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax1, X, Y,Z_ax,8)
%caxis(ax1,[3 7])
xlabel(ax1,'Slide (X) Position')
ylabel(ax1,'Offset (Y) Position')
colorbar(ax1,'southoutside')
title(ax1,plotTitle )

results = exp_mutual_p2;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Mutual to Pickup 2 (uH), Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax2, X, Y,Z_ax,8)
%caxis(ax2,[3 7])
xlabel(ax2,'Slide (X) Position')
ylabel(ax2,'Offset (Y) Position')
colorbar(ax2,'southoutside')
title(ax2,plotTitle )

results = exp_phase_p1;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source to Pickup 1 Phase, Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax3, X, Y,Z_ax)
%caxis(ax3,[57 63])
xlabel(ax3,'Slide (X) Position')
ylabel(ax3,'Offset (Y) Position')
colorbar(ax3,'southoutside')
title(ax3,plotTitle )

results = exp_phase_p2;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source to Pickup 2 phase, Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax4, X, Y,Z_ax)
%caxis(ax4,[30 33])
xlabel(ax4,'Slide (X) Position')
ylabel(ax4,'Offset (Y) Position')
colorbar(ax4,'southoutside')
title(ax4,plotTitle )

results = exp_coupling_p1;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source to Pickup 1 coupling Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax5, X, Y,Z_ax,8)
%caxis(ax5,[0.05 0.2])
xlabel(ax5,'Slide (X) Position')
ylabel(ax5,'Offset (Y) Position')
colorbar(ax5,'southoutside')
title(ax5,plotTitle )

results = exp_coupling_p2;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source to Pickup 2 coupling Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax6, X, Y,Z_ax,8)
%caxis(ax6,[0.05 0.2])
xlabel(ax6,'Slide (X) Position')
ylabel(ax6,'Offset (Y) Position')
colorbar(ax6,'southoutside')
title(ax6,plotTitle )

results = exp_coupling_both;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source to Both Pickups coupling Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax7, X, Y,Z_ax,8)
caxis(ax7,[0.05 0.3])
xlabel(ax7,'Slide (X) Position')
ylabel(ax7,'Offset (Y) Position')
colorbar(ax7,'southoutside')
title(ax7,plotTitle )

results = exp_freq;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source Frequency, Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax8, X, Y,Z_ax)
%caxis(ax8,[30 33])
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


