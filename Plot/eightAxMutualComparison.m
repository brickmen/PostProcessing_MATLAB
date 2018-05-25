% Plots Errors for Two Plots
fea_z_value_selected = z_value_selected;
exp_z_value_selected = z_value_selected;


fea_values= fea_mutual_p1;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
plotTitle = ['FEA Mutual P1 (uH), Z = ' num2str(fea_z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax1, X, Y,Z_ax,8)
%caxis(ax1,[3 7])
xlabel(ax1,'Slide (X) Position')
ylabel(ax1,'Offset (Y) Position')
colorbar(ax1,'southoutside')
title(ax1,plotTitle )

exp_values = exp_mutual_p1;
plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
plotTitle = ['EXP Mutual P1(uH), Z = ' num2str(exp_z_value_selected)];
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax2, X, Y,Z_ax2,8)
%caxis(ax2,[3 7])
xlabel(ax2,'Slide (X) Position')
ylabel(ax2,'Offset (Y) Position')
colorbar(ax2,'southoutside')
title(ax2,plotTitle )


plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
plotTitle = ['FEA/EXP Percent Error in P1 ' ];
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
contourf(ax3, X, Y,Z_ax3,8)
caxis(ax3,[-20 20])
xlabel(ax3,'Slide (X) Position')
ylabel(ax3,'Offset (Y) Position')
colorbar(ax3,'southoutside')
title(ax3,plotTitle )

% fea_values= fea_self_p1;
% plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
% plotTitle = ['Pickup 1 Self Inductance (uH), Z = ' num2str(fea_z_value_selected)];
% Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
% contourf(ax4, X, Y,Z_ax)
% %caxis(ax4,[30 33])
% xlabel(ax4,'Slide (X) Position')
% ylabel(ax4,'Offset (Y) Position')
% colorbar(ax4,'southoutside')
% title(ax4,plotTitle )
% 
% 
fea_values= fea_mutual_p2;
exp_values = exp_mutual_p2;
plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
plotTitle = ['FEA Mutual P2 (uH), Z = ' num2str(fea_z_value_selected)];
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax5, X, Y,Z_ax,8)
%caxis(ax1,[3 7])
xlabel(ax5,'Slide (X) Position')
ylabel(ax5,'Offset (Y) Position')
colorbar(ax5,'southoutside')
title(ax5,plotTitle )


plotValues = exp_values(exp_values(:,3)==exp_z_value_selected,:);
plotTitle = ['EXP Mutual P2(uH), Z = ' num2str(exp_z_value_selected)];
Z_ax2=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf(ax6, X, Y,Z_ax2,8)
%caxis(ax2,[3 7])
xlabel(ax6,'Slide (X) Position')
ylabel(ax6,'Offset (Y) Position')
colorbar(ax6,'southoutside')
title(ax6,plotTitle )


plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
plotTitle = ['FEA/EXP Percent Error in P2 ' ];
Z_ax3 = 100*rdivide((Z_ax - Z_ax2),Z_ax);
contourf(ax7, X, Y,Z_ax3,8)
caxis(ax7,[-20 20])
xlabel(ax7,'Slide (X) Position')
ylabel(ax7,'Offset (Y) Position')
colorbar(ax7,'southoutside')
title(ax7,plotTitle )
% 
% fea_values= fea_self_p2;
% plotValues = fea_values(fea_values(:,3)==fea_z_value_selected,:);
% plotTitle = ['Pickup 2 Self Inductance (uH), Z = ' num2str(fea_z_value_selected)];
% Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
% contourf(ax8, X, Y,Z_ax)
% %caxis(ax8,[30 33])
% xlabel(ax8,'Slide (X) Position')
% ylabel(ax8,'Offset (Y) Position')
% colorbar(ax8,'southoutside')
% title(ax8,plotTitle )

%make Graphs Pretty
ax1.XGrid = 'on';
ax1.YGrid = 'on';
ax1.XTick = ux_xy_ticks;
ax1.YTick = ux_xy_ticks;

ax2.XGrid = 'on';
ax2.YGrid = 'on';
ax2.XTick = ux_xy_ticks;
ax2.YTick = ux_xy_ticks;

ax3.XGrid = 'on';
ax3.YGrid = 'on';
ax3.XTick = ux_xy_ticks;
ax3.YTick = ux_xy_ticks;

ax4.XGrid = 'on';
ax4.YGrid = 'on';
ax4.XTick = ux_xy_ticks;
ax4.YTick = ux_xy_ticks;

ax5.XGrid = 'on';
ax5.YGrid = 'on';
ax5.XTick = ux_xy_ticks;
ax5.YTick = ux_xy_ticks;

ax6.XGrid = 'on';
ax6.YGrid = 'on';
ax6.XTick = ux_xy_ticks;
ax6.YTick = ux_xy_ticks;

ax7.XGrid = 'on';
ax7.YGrid = 'on';
ax7.XTick = ux_xy_ticks;
ax7.YTick = ux_xy_ticks;

ax8.XGrid = 'on';
ax8.YGrid = 'on';
ax8.XTick = ux_xy_ticks;
ax8.YTick = ux_xy_ticks;


