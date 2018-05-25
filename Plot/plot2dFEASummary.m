% Sets up and plots a 2d summary of selected FEA values

z_legend_1 = ['Z =' num2str(plot_z_values(1))];
z_legend_2 = ['Z =' num2str(plot_z_values(2))];
z_legend_3 = ['Z =' num2str(plot_z_values(3))];  


% Plot the 2D sweeps
plotTitle = ['Source Self, X = 2'];
results = fea_self_s;
%Select Desired Results
plotValues1 = results(results(:,3)==plot_z_values(1),:);
plotValues1 = plotValues1(plotValues1(:,1)==plot_x_values(1),:);
plotValues2 = results(results(:,3)==plot_z_values(2),:);
plotValues2 = plotValues2(plotValues2(:,1)==plot_x_values(1),:);
plotValues3 = results(results(:,3)==plot_z_values(3),:);
plotValues3 = plotValues3(plotValues3(:,1)==plot_x_values(1),:);
%Sort Values
plotValues1=sortrows(plotValues1,2);
plotValues2=sortrows(plotValues2,2);
plotValues3=sortrows(plotValues3,2);
%Plot the values
plot(ax1, plotValues1(:,2),plotValues1(:,4), plotValues2(:,2),plotValues2(:,4), plotValues3(:,2),plotValues3(:,4))
%set axis labels and title
ylabel(ax1,'Inductance (\muH)')
xlabel(ax1,'Offset (Y) Position')
title(ax1,plotTitle )
%Add Legend
legend(ax1, z_legend_1, z_legend_2, z_legend_3, 'Location', 'best')
%Make Pretty
ax1.XTick = ux_y_ticks;
%ax1.YTick = ux_y_ticks;
ax1.XGrid = 'on';
ax1.YGrid = 'on';
ax1.XLim =[y_min_lim y_max_lim];

% Plot the 2D sweeps
plotTitle = ['Source Self, X=' num2str(plot_x_values(2))];
results = fea_self_s;
%Select Desired Results
plotValues1 = results(results(:,3)==plot_z_values(1),:);
plotValues1 = plotValues1(plotValues1(:,1)==plot_x_values(2),:);
plotValues2 = results(results(:,3)==plot_z_values(2),:);
plotValues2 = plotValues2(plotValues2(:,1)==plot_x_values(2),:);
plotValues3 = results(results(:,3)==plot_z_values(3),:);
plotValues3 = plotValues3(plotValues3(:,1)==plot_x_values(2),:);
%Sort Values
plotValues1=sortrows(plotValues1,2);
plotValues2=sortrows(plotValues2,2);
plotValues3=sortrows(plotValues3,2);
%Plot the values
plot(ax2, plotValues1(:,2),plotValues1(:,4), plotValues2(:,2),plotValues2(:,4), plotValues3(:,2),plotValues3(:,4))
%set axis labels and title
ylabel(ax2,'Inductance (\muH)')
xlabel(ax2,'Offset (Y) Position')
title(ax2,plotTitle )
%Add Legend
legend(ax2, z_legend_1, z_legend_2, z_legend_3, 'Location', 'best')
%Make Pretty
ax2.XTick = ux_y_ticks;
%ax2.YTick = ux_y_ticks;
ax2.XGrid = 'on';
ax2.YGrid = 'on';
ax2.XLim =[y_min_lim y_max_lim];

% Plot the 2D sweeps
plotTitle = ['Source Self, Y=' num2str(plot_y_values(1))];
results = fea_self_s;
%Select Desired Results
plotValues1 = results(results(:,3)==plot_z_values(1),:);
plotValues1 = plotValues1(plotValues1(:,2)==plot_y_values(1),:);
plotValues2 = results(results(:,3)==plot_z_values(2),:);
plotValues2 = plotValues2(plotValues2(:,2)==plot_y_values(1),:);
plotValues3 = results(results(:,3)==plot_z_values(3),:);
plotValues3 = plotValues3(plotValues3(:,2)==plot_y_values(1),:);
%Sort Values
plotValues1=sortrows(plotValues1,1);
plotValues2=sortrows(plotValues2,1);
plotValues3=sortrows(plotValues3,1);
%Plot the values
plot(ax3, plotValues1(:,1),plotValues1(:,4), plotValues2(:,1),plotValues2(:,4), plotValues3(:,1),plotValues3(:,4))
%set axis labels and title
ylabel(ax3,'Inductance (\muH)')
xlabel(ax3,'Slide (X) Position')
title(ax3,plotTitle )
%Add Legend
legend(ax3, z_legend_1, z_legend_2, z_legend_3, 'Location', 'best')
%Make Pretty
ax3.XTick = ux_x_ticks;
%ax3.YTick = ux_y_ticks;
ax3.XGrid = 'on';
ax3.YGrid = 'on';
ax3.XLim =[x_min_lim x_max_lim];

% Plot the 2D sweeps
plotTitle = ['Source Self, Y=' num2str(plot_y_values(2))];
results = fea_self_s;
%Select Desired Results
plotValues1 = results(results(:,3)==plot_z_values(1),:);
plotValues1 = plotValues1(plotValues1(:,2)==plot_y_values(2),:);
plotValues2 = results(results(:,3)==plot_z_values(2),:);
plotValues2 = plotValues2(plotValues2(:,2)==plot_y_values(2),:);
plotValues3 = results(results(:,3)==plot_z_values(3),:);
plotValues3 = plotValues3(plotValues3(:,2)==plot_y_values(2),:);
%Sort Values
plotValues1=sortrows(plotValues1,1);
plotValues2=sortrows(plotValues2,1);
plotValues3=sortrows(plotValues3,1);
%Plot the values
plot(ax4, plotValues1(:,1),plotValues1(:,4), plotValues2(:,1),plotValues2(:,4), plotValues3(:,1),plotValues3(:,4))
%set axis labels and title
ylabel(ax4,'Inductance (\muH)')
xlabel(ax4,'Slide (X) Position')
title(ax4,plotTitle )
%Add Legend
legend(ax4, z_legend_1, z_legend_2, z_legend_3,...
    'Location','best');

%Make Pretty
ax4.XTick = ux_x_ticks;
%ax4.YTick = ux_y_ticks;
ax4.XGrid = 'on';
ax4.YGrid = 'on';
ax4.XLim =[x_min_lim x_max_lim];

% Plot the 2D sweeps
plotTitle = ['Coupling, X = 2'];
results = fea_coupling_both;
%Select Desired Results
plotValues1 = results(results(:,3)==plot_z_values(1),:);
plotValues1 = plotValues1(plotValues1(:,1)==plot_x_values(1),:);
plotValues2 = results(results(:,3)==plot_z_values(2),:);
plotValues2 = plotValues2(plotValues2(:,1)==plot_x_values(1),:);
plotValues3 = results(results(:,3)==plot_z_values(3),:);
plotValues3 = plotValues3(plotValues3(:,1)==plot_x_values(1),:);
%Sort Values
plotValues1=sortrows(plotValues1,2);
plotValues2=sortrows(plotValues2,2);
plotValues3=sortrows(plotValues3,2);
%Plot the values
plot(ax5, plotValues1(:,2),plotValues1(:,4), plotValues2(:,2),plotValues2(:,4), plotValues3(:,2),plotValues3(:,4))
%set axis labels and title
ylabel(ax5,'Coupling (k)')
xlabel(ax5,'Offset (Y) Position')
title(ax5,plotTitle )
%Add Legend
legend(ax5, z_legend_1, z_legend_2, z_legend_3, 'Location', 'best')
%Make Pretty
ax5.XTick = ux_y_ticks;
%ax5.YTick = ux_y_ticks;
ax5.XGrid = 'on';
ax5.YGrid = 'on';
ax5.XLim =[y_min_lim y_max_lim];

% Plot the 2D sweeps
plotTitle = ['Coupling, X=' num2str(plot_x_values(2))];
results = fea_coupling_both;
%Select Desired Results
plotValues1 = results(results(:,3)==plot_z_values(1),:);
plotValues1 = plotValues1(plotValues1(:,1)==plot_x_values(2),:);
plotValues2 = results(results(:,3)==plot_z_values(2),:);
plotValues2 = plotValues2(plotValues2(:,1)==plot_x_values(2),:);
plotValues3 = results(results(:,3)==plot_z_values(3),:);
plotValues3 = plotValues3(plotValues3(:,1)==plot_x_values(2),:);
%Sort Values
plotValues1=sortrows(plotValues1,2);
plotValues2=sortrows(plotValues2,2);
plotValues3=sortrows(plotValues3,2);
%Plot the values
plot(ax6, plotValues1(:,2),plotValues1(:,4), plotValues2(:,2),plotValues2(:,4), plotValues3(:,2),plotValues3(:,4))
%set axis labels and title
ylabel(ax6,'Coupling (k)')
xlabel(ax6,'Offset (Y) Position')
title(ax6,plotTitle )
%Add Legend
legend(ax6, z_legend_1, z_legend_2, z_legend_3, 'Location', 'best')
%Make Pretty
ax6.XTick = ux_y_ticks;
%ax6.YTick = ux_y_ticks;
ax6.XGrid = 'on';
ax6.YGrid = 'on';
ax6.XLim =[y_min_lim y_max_lim];

% Plot the 2D sweeps
plotTitle = ['Coupling, Y=' num2str(plot_y_values(1))];
results = fea_coupling_both;
%Select Desired Results
plotValues1 = results(results(:,3)==plot_z_values(1),:);
plotValues1 = plotValues1(plotValues1(:,2)==plot_y_values(1),:);
plotValues2 = results(results(:,3)==plot_z_values(2),:);
plotValues2 = plotValues2(plotValues2(:,2)==plot_y_values(1),:);
plotValues3 = results(results(:,3)==plot_z_values(3),:);
plotValues3 = plotValues3(plotValues3(:,2)==plot_y_values(1),:);
%Sort Values
plotValues1=sortrows(plotValues1,1);
plotValues2=sortrows(plotValues2,1);
plotValues3=sortrows(plotValues3,1);
%Plot the values
plot(ax7, plotValues1(:,1),plotValues1(:,4), plotValues2(:,1),plotValues2(:,4), plotValues3(:,1),plotValues3(:,4))
%set axis labels and title
ylabel(ax7,'Coupling (k)')
xlabel(ax7,'Slide (X) Position')
title(ax7,plotTitle )
%Add Legend
legend(ax7, z_legend_1, z_legend_2, z_legend_3, 'Location', 'best')
%Make Pretty
ax7.XTick = ux_x_ticks;
%ax7.YTick = ux_y_ticks;
ax7.XGrid = 'on';
ax7.YGrid = 'on';
ax7.XLim =[x_min_lim x_max_lim];

% Plot the 2D sweeps
plotTitle = ['Coupling, Y=' num2str(plot_y_values(2))];
results = fea_coupling_both;
%Select Desired Results
plotValues1 = results(results(:,3)==plot_z_values(1),:);
plotValues1 = plotValues1(plotValues1(:,2)==plot_y_values(2),:);
plotValues2 = results(results(:,3)==plot_z_values(2),:);
plotValues2 = plotValues2(plotValues2(:,2)==plot_y_values(2),:);
plotValues3 = results(results(:,3)==plot_z_values(3),:);
plotValues3 = plotValues3(plotValues3(:,2)==plot_y_values(2),:);
%Sort Values
plotValues1=sortrows(plotValues1,1);
plotValues2=sortrows(plotValues2,1);
plotValues3=sortrows(plotValues3,1);
%Plot the values
plot(ax8, plotValues1(:,1),plotValues1(:,4), plotValues2(:,1),plotValues2(:,4), plotValues3(:,1),plotValues3(:,4))
%set axis labels and title
ylabel(ax8,'Coupling (k)')
xlabel(ax8,'Slide (X) Position')
title(ax8,plotTitle )
%Add Legend
  
legend(ax8, z_legend_1, z_legend_2, z_legend_3, 'Location', 'best')
%Make Pretty
ax8.XTick = ux_x_ticks;
%ax8.YTick = ux_y_ticks;
ax8.XGrid = 'on';
ax8.YGrid = 'on';
ax8.XLim =[x_min_lim x_max_lim];