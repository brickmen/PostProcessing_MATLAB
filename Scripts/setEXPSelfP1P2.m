% Sets EXP self inductance of P1 and P2 to fixed values
fprintf(' Set P1 \n')
measured = ux_exp_measured_p1;
expSetFixedSelf;
exp_self_p1 = self_coil;
fprintf(' Set P2 \n')
measured = ux_exp_measured_p2;
expSetFixedSelf;
exp_self_p2 = self_coil;