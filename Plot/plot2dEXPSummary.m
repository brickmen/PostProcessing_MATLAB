% Sets up and plots a 2d summary of selected EXP values

%DEFINITIONS
plot_z_values = [ 25 45 75]
plot_y_values = [2 50]
plot_x_values = [2 50]


% Plot the 2D sweeps
plotTitle = ['Source Self, X = 2'];
results = exp_self_s;
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
legend(ax1, "Z = 25", "Z = 45", "Z = 75", 'Location', 'best')
%Make Pretty
ax1.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
%ax1.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax1.XGrid = 'on';
ax1.YGrid = 'on';

% Plot the 2D sweeps
plotTitle = ['Source Self, X = 50'];
results = exp_self_s;
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
legend(ax2, "Z = 25", "Z = 45", "Z = 75", 'Location', 'best')
%Make Pretty
ax2.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
%ax2.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax2.XGrid = 'on';
ax2.YGrid = 'on';

% Plot the 2D sweeps
plotTitle = ['Source Self, Y = 2'];
results = exp_self_s;
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
legend(ax3, "Z = 25", "Z = 45", "Z = 75", 'Location', 'best')
%Make Pretty
ax3.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
%ax3.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax3.XGrid = 'on';
ax3.YGrid = 'on';

% Plot the 2D sweeps
plotTitle = ['Source Self, Y = 50'];
results = exp_self_s;
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
legend(ax4, "Z = 25", "Z = 45", "Z = 75",...
    'Location','best');

%Make Pretty
ax4.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
%ax4.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax4.XGrid = 'on';
ax4.YGrid = 'on';

% Plot the 2D sweeps
plotTitle = ['Coupling, X = 2'];
results = exp_coupling_both;
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
ylabel(ax8,'Coupling (k)')
xlabel(ax5,'Offset (Y) Position')
title(ax5,plotTitle )
%Add Legend
legend(ax5, "Z = 25", "Z = 45", "Z = 75", 'Location', 'best')
%Make Pretty
ax5.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
%ax5.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax5.XGrid = 'on';
ax5.YGrid = 'on';

% Plot the 2D sweeps
plotTitle = ['Coupling, X = 50'];
results = exp_coupling_both;
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
ylabel(ax8,'Coupling (k)')
xlabel(ax6,'Offset (Y) Position')
title(ax6,plotTitle )
%Add Legend
legend(ax6, "Z = 25", "Z = 45", "Z = 75", 'Location', 'best')
%Make Pretty
ax6.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
%ax6.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax6.XGrid = 'on';
ax6.YGrid = 'on';

% Plot the 2D sweeps
plotTitle = ['Coupling, Y = 2'];
results = exp_coupling_both;
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
ylabel(ax8,'Coupling (k)')
xlabel(ax7,'Slide (X) Position')
title(ax7,plotTitle )
%Add Legend
legend(ax7, "Z = 25", "Z = 45", "Z = 75", 'Location', 'best')
%Make Pretty
ax7.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
%ax7.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax7.XGrid = 'on';
ax7.YGrid = 'on';

% Plot the 2D sweeps
plotTitle = ['Coupling, Y = 50'];
results = exp_coupling_both;
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
legend(ax8, "Z = 25", "Z = 45", "Z = 75", 'Location', 'best')
%Make Pretty
ax8.XTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
%ax8.YTick = [-50 -40 -30 -20 -10 0 10 20 30 40 50];
ax8.XGrid = 'on';
ax8.YGrid = 'on';