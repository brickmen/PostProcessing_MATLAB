% Sets up plot axes

figure(1);
ax1 = subplot(2,4,1); % top left subplot
ax2 = subplot(2,4,2); % top mid subplot
ax3 = subplot(2,4,3); % top right subplot
ax4 = subplot(2,4,4); % top left subplot
ax5 = subplot(2,4,5); % top mid subplot
ax6 = subplot(2,4,6); % top right subplot
ax7 = subplot(2,4,7); % top right subplot
ax8 = subplot(2,4,8); % top right subplot

title(ax1,' Figure 1')
title(ax2,' Figure 2')
title(ax3,' Figure 3')
title(ax4,' Figure 4')
title(ax5,' Figure 5')
title(ax6,' Figure 6')
title(ax7,' Figure 7')
title(ax8,' Figure 8')

% view(ax1,[175,25])
colormap('jet')
set(gcf,'color','w');
