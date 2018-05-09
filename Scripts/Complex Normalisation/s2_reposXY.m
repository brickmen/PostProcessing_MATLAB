% Step 2: Reposition EXP XY Axes to match measured


% find coupling max position in FEA
index_fea_max_p1 = find(FEAmutual(:,4) == max(FEAmutual(:,4)));
index_fea_max_p2 = find(FEAmutual(:,5) == max(FEAmutual(:,5)));
% find coupling max position in EXP
index_exp_max_p1 = find(EXPmutual(:,4) == max(EXPmutual(:,4)));
index_exp_max_p2 = find(EXPmutual(:,5) == max(EXPmutual(:,5)));

fprintf('FEA P1 Max  [ %4.2f %4.2f %4.2f ] measured %4.2f uH index %i \n', FEAmutual(index_fea_max_p1,1), FEAmutual(index_fea_max_p1,2), FEAmutual(index_fea_max_p1,3), FEAmutual(index_fea_max_p1,4), index_fea_max_p1)
fprintf('EXP P1 Max  [ %4.2f %4.2f %4.2f ] measured %4.2f uH index %i \n', EXPmutual(index_exp_max_p1,1), EXPmutual(index_exp_max_p1,2), EXPmutual(index_exp_max_p1,3), EXPmutual(index_exp_max_p1,4), index_exp_max_p1)
fprintf('FEA P2 Max  [ %4.2f %4.2f %4.2f ] measured %4.2f uH index %i \n', FEAmutual(index_fea_max_p2,1), FEAmutual(index_fea_max_p2,2), FEAmutual(index_fea_max_p2,3), FEAmutual(index_fea_max_p2,5), index_fea_max_p2)
fprintf('EXP P2 Max  [ %4.2f %4.2f %4.2f ] measured %4.2f uH index %i \n', EXPmutual(index_exp_max_p2,1), EXPmutual(index_exp_max_p2,2), EXPmutual(index_exp_max_p2,3), EXPmutual(index_exp_max_p2,5), index_exp_max_p2)

delta_exp_p1_x = FEAmutual(index_fea_max_p1,1) - EXPmutual(index_exp_max_p1,1);
delta_exp_p1_y = FEAmutual(index_fea_max_p1,2) - EXPmutual(index_exp_max_p1,2);
delta_exp_p2_x = FEAmutual(index_fea_max_p2,1) - EXPmutual(index_exp_max_p2,1);
delta_exp_p2_y = FEAmutual(index_fea_max_p2,2) - EXPmutual(index_exp_max_p2,2);

fprintf('Moving EXP XY Axes by  [ %4.2f %4.2f --- ] for P1 \n', delta_exp_p1_x, delta_exp_p1_y)
fprintf('Moving EXP XY Axes by  [ %4.2f %4.2f --- ] for P2 \n', delta_exp_p2_x, delta_exp_p2_y)

for i = 1:1:length(EXPmutual)

        EXPmutualP1(i,:) = [ EXPmutual(i,1)+delta_exp_p1_x EXPmutual(i,2)+delta_exp_p1_y EXPmutual(i,3) EXPmutual(i,4) EXPmutual(i,5) ];

        EXPmutualP2(i,:) = [ EXPmutual(i,1)+delta_exp_p2_x EXPmutual(i,2)+delta_exp_p2_y EXPmutual(i,3) EXPmutual(i,4) EXPmutual(i,5) ];
end

%NOTE: P1 is dataset which is zeroed for P1 and will be used from now on.
%It is possible to use P2 but not preferred

EXPmutualNormalized = EXPmutualP1;
