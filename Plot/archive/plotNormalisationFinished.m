%  Plots after Normalisation completes

mg_title = ['z' num2str(z_value_selected)];

%title(ax1,'EXP Mutual Inductance, Pickup 1 ' )
Z_ax1=mg_exp_p1.(mg_title);
contourf(ax1, X, Y,Z_ax1,4)
caxis(ax1,[0 4])
xlabel(ax1,'Slide (X) Position')
ylabel(ax1,'Offset (Y) Position')
zlabel(ax1,'Mutual Inductance')
colorbar(ax1,'southoutside')

%title(ax2,['EXP Mutual Inductance, Pickup 2 , Z = ' num2str(z_value_selected)] )
Z_ax2=mg_exp_p2.(mg_title);
contourf(ax2, X, Y,Z_ax2,4)
caxis(ax2,[0 4])
xlabel(ax2,'Slide (X) Position')
ylabel(ax2,'Offset (Y) Position')
colorbar(ax2,'southoutside')

%title(ax3,['EXP Mutual Inductance, Pickup Combined , Z = ' num2str(z_value_selected)] )
Z_ax3=mg_exp_p1.(mg_title)+mg_exp_p2.(mg_title);
contourf(ax3, X, Y,Z_ax3,4)
caxis(ax3,[0 8])
xlabel(ax3,'Slide (X) Position')
ylabel(ax3,'Offset (Y) Position')
colorbar(ax3,'southoutside')

%title(ax4,['Error in measurement between Pickup 1'] )
Z_ax4=rdivide(mg_error_p1.(mg_title),mg_exp_p1.(mg_title));
contourf(ax4, X, Y,Z_ax4)
caxis(ax4,[-0.5 0.5])
xlabel(ax4,'Slide (X) Position')
ylabel(ax4,'Offset (Y) Position')
colormap(ax4,'jet')
colorbar(ax4,'southoutside')

%title(ax5,['EXP Mutual Inductance, Pickup 1 , Z = ' num2str(z_value_selected)] )
Z_ax5=mg_fea_p1.(mg_title);
contourf(ax5, X, Y,Z_ax5,4)
caxis(ax5,[0 4])
xlabel(ax5,'Slide (X) Position')
ylabel(ax5,'Offset (Y) Position')
colorbar(ax5,'southoutside')

%title(ax6,['EXP Mutual Inductance, Pickup 2 , Z = ' num2str(z_value_selected)] )
Z_ax6=mg_fea_p2.(mg_title);
contourf(ax6, X, Y,Z_ax6,4)
caxis(ax6,[0 4])
xlabel(ax6,'Slide (X) Position')
ylabel(ax6,'Offset (Y) Position')
colorbar(ax6,'southoutside')

%title(ax7,['EXP Mutual Inductance, Pickup Combined , Z = ' num2str(z_value_selected)] )
Z_ax7=mg_fea_p1.(mg_title)+mg_fea_p2.(mg_title);
contourf(ax7, X, Y,Z_ax7,4)
caxis(ax7,[0 8])
xlabel(ax7,'Slide (X) Position')
ylabel(ax7,'Offset (Y) Position')
colorbar(ax7,'southoutside')

%title(ax8,['Error in measurement between Pickup 1'] )
Z_ax8=rdivide(mg_error_p2.(mg_title),mg_exp_p2.(mg_title));
contourf(ax8, X, Y,Z_ax8)
caxis(ax8,[-0.5 0.5])
xlabel(ax8,'Slide (X) Position')
ylabel(ax8,'Offset (Y) Position')
colormap(ax8,'jet')
colorbar(ax8,'southoutside')

