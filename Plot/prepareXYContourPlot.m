% Plots <results> to an XY Contour using datasets own limits
% Requires: z_selected , plotTitle

if not(exist('z_selected', 'var'))
    z_selected = 45;
    fprintf( ' Variable: <z_selected> missing, used default value: %f /n' , z_selected)
end
if not(exist('plotTitle', 'var'))
    plotTitle = ' Figure ';
    fprintf( ' Variable: <plotTitle> missing, used default value: %s /n' , plotTitle)
end

plotValues = results(results(:,3)==z_selected,:);
x_max = max(plotValues(:,1));
x_min = min(plotValues(:,1));
y_max = max(plotValues(:,2));
y_min = min(plotValues(:,2));
[X,Y] = meshgrid(x_min:ux_plot_grid_res:x_max,y_min:ux_plot_grid_res:y_max);

plot_singleXY = figure;

Z_ax=griddata(plotValues(:,1),plotValues(:,2),plotValues(:,4),X,Y);
contourf( X, Y,Z_ax,8)
%caxis([-20 20])
xlabel('Slide (X) Position')
ylabel('Offset (Y) Position')
colorbar('southoutside')
title(plotTitle )
XGrid = 'on';
YGrid = 'on';
XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
colormap('jet')
