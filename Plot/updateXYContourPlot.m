% Plots <results> to an XY Contour using datasets own limits
% Requires: z_selected , plotTitle



plotValues = results(results(:,3)==z_selected,:);
Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf( X, Y,Z_ax,8);
%caxis([-20 20])
xlabel('Slide (X) Position')
ylabel('Offset (Y) Position')
colorbar('southoutside')
title(plotTitle )
XGrid = 'on';
YGrid = 'on';
XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];