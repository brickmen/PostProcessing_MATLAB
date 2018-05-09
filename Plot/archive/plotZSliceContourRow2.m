%  Plots a contour for the selected z value

resultsToUse = results;
plotValues = resultsToUse(resultsToUse(:,3)==z_value_selected,:);

Z_ax5=griddata(plotValues(:,1),plotValues(:,2),[abs(plotValues(:,4))+abs(0)],X,Y);
contourf(ax5, X, Y,Z_ax5)
caxis(ax5,[0 5])
title(ax5,['Mutual Inductance, first coil, Z = ' num2str(z_value_selected)] )
xlabel(ax5,'Slide (X) Position')
ylabel(ax5,'Offset (Y) Position')
colorbar(ax5,'southoutside')

Z_ax6=griddata(plotValues(:,1),plotValues(:,2),[abs(plotValues(:,5))+abs(0)],X,Y);
contourf(ax6, X, Y,Z_ax6)
caxis(ax6,[0 5])
title(ax6,['Mutual Inductance, second coil, Z = ' num2str(z_value_selected)] )
xlabel(ax6,'Slide (X) Position')
ylabel(ax6,'Offset (Y) Position')
%colorbar(ax6,'westoutside')

Z_ax7=griddata(plotValues(:,1),plotValues(:,2),[abs(plotValues(:,4))+abs(plotValues(:,5))],X,Y);
contourf(ax7, X, Y,Z_ax7)
caxis(ax7,[0 8])
title(ax7,['Mutual Inductance, both coils, Z = ' num2str(z_value_selected)] )
xlabel(ax7,'Slide (X) Position')
ylabel(ax7,'Offset (Y) Position')
colorbar(ax7,'southoutside')