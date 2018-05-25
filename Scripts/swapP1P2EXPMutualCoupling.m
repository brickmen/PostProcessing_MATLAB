% Swaps over experimewntal P1 P2 coupling and mutual values

swap_p1 = exp_mutual_p1;
exp_mutual_p1 = exp_mutual_p2;
exp_mutual_p2 = swap_p1;

swap_p1 = exp_coupling_p1;
exp_coupling_p1 = exp_coupling_p2;
exp_coupling_p2 = swap_p1;