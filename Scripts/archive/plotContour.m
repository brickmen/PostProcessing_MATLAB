%  Plots a contour for the selected
[X,Y] = meshgrid(x_range_start:5:x_range_end,y_range_start:5:y_range_end);

resultsSoFar = results(1:noOfPoints,:);
plotValues = resultsSoFar(resultsSoFar(:,3)==z_value_selected,:);

Z_ax1=griddata(plotValues(:,1),plotValues(:,2),[abs(plotValues(:,4))+abs(0)],X,Y);
contourf(ax1, X, Y,Z_ax1)
caxis(ax1,[0 5])
title(ax1,['Mutual Inductance, first coil, Z = ' num2str(z_value_selected)] )
xlabel(ax1,'Slide (X) Position')
ylabel(ax1,'Offset (Y) Position')
colorbar(ax1,'southoutside')

Z_ax2=griddata(plotValues(:,1),plotValues(:,2),[abs(plotValues(:,5))+abs(0)],X,Y);
contourf(ax2, X, Y,Z_ax2)
caxis(ax2,[0 5])
title(ax2,['Mutual Inductance, second coil, Z = ' num2str(z_value_selected)] )
xlabel(ax2,'Slide (X) Position')
ylabel(ax2,'Offset (Y) Position')
colorbar(ax2,'southoutside')

Z_ax3=griddata(plotValues(:,1),plotValues(:,2),[abs(plotValues(:,4))+abs(plotValues(:,5))],X,Y);
contourf(ax3, X, Y,Z_ax3)
caxis(ax3,[0 8])
title(ax3,['Mutual Inductance, both coils, Z = ' num2str(z_value_selected)] )
xlabel(ax3,'Slide (X) Position')
ylabel(ax3,'Offset (Y) Position')
colorbar(ax3,'southoutside')