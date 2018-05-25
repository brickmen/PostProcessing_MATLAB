% Sets EXP self inductance of P1 and P2 to fixed values
fprintf(' Set P1 \n')
measured = ux_exp_measured_s;
expSetFixedSelf;
exp_self_s = self_coil;
fprintf(' Set P2 \n')
measured = ux_exp_measured_p;
expSetFixedSelf;
exp_self_p = self_coil;