% Quicky plots values for FEA study version 2

results = fea_mutual_p1;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Mutual to Pickup 1 (uH), Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax1, X, Y,Z_ax,8)
%caxis(ax1,[3 7])
xlabel(ax1,'Slide (X) Position')
ylabel(ax1,'Offset (Y) Position')
colorbar(ax1,'southoutside')
title(ax1,plotTitle )

results = fea_mutual_p2;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Mutual to Pickup 2 (uH), Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax2, X, Y,Z_ax,8)
%caxis(ax2,[3 7])
xlabel(ax2,'Slide (X) Position')
ylabel(ax2,'Offset (Y) Position')
colorbar(ax2,'southoutside')
title(ax2,plotTitle )

results = fea_self_s;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source Self Inductance (uH), Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax3, X, Y,Z_ax)
%caxis(ax3,[57 63])
xlabel(ax3,'Slide (X) Position')
ylabel(ax3,'Offset (Y) Position')
colorbar(ax3,'southoutside')
title(ax3,plotTitle )

results = fea_self_p1;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Pickup 1 Self Inductance (uH), Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax4, X, Y,Z_ax)
%caxis(ax4,[30 33])
xlabel(ax4,'Slide (X) Position')
ylabel(ax4,'Offset (Y) Position')
colorbar(ax4,'southoutside')
title(ax4,plotTitle )

results = fea_coupling_p1;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source to Pickup 1 coupling Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax5, X, Y,Z_ax,8)
%caxis(ax5,[0.05 0.2])
xlabel(ax5,'Slide (X) Position')
ylabel(ax5,'Offset (Y) Position')
colorbar(ax5,'southoutside')
title(ax5,plotTitle )

results = fea_coupling_p2;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source to Pickup 2 coupling Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax6, X, Y,Z_ax,8)
%caxis(ax6,[0.05 0.2])
xlabel(ax6,'Slide (X) Position')
ylabel(ax6,'Offset (Y) Position')
colorbar(ax6,'southoutside')
title(ax6,plotTitle )

results = fea_coupling_both;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Source to Both Pickups coupling Z = ' num2str(z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax7, X, Y,Z_ax,8)
caxis(ax7,[0.05 0.3])
xlabel(ax7,'Slide (X) Position')
ylabel(ax7,'Offset (Y) Position')
colorbar(ax7,'southoutside')
title(ax7,plotTitle )

results = fea_self_p2;
plotValues = results(results(:,3)==z_value_selected,:);
plotTitle = ['Pickup 2 Self Inductance (uH), Z = ' num2str(z_value_selected)];
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
ax1.XTick = ux_x_ticks;
ax1.YTick = ux_y_ticks;

ax2.XGrid = 'on';
ax2.YGrid = 'on';
ax2.XTick = ux_x_ticks;
ax2.YTick = ux_y_ticks;

ax3.XGrid = 'on';
ax3.YGrid = 'on';
ax3.XTick = ux_x_ticks;
ax3.YTick = ux_y_ticks;

ax4.XGrid = 'on';
ax4.YGrid = 'on';
ax4.XTick = ux_x_ticks;
ax4.YTick = ux_y_ticks;

ax5.XGrid = 'on';
ax5.YGrid = 'on';
ax5.XTick = ux_x_ticks;
ax5.YTick = ux_y_ticks;

ax6.XGrid = 'on';
ax6.YGrid = 'on';
ax6.XTick = ux_x_ticks;
ax6.YTick = ux_y_ticks;

ax7.XGrid = 'on';
ax7.YGrid = 'on';
ax7.XTick = ux_x_ticks;
ax7.YTick = ux_y_ticks;

ax8.XGrid = 'on';
ax8.YGrid = 'on';
ax8.XTick = ux_x_ticks;
ax8.YTick = ux_y_ticks;


