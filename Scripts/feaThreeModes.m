% Gets to three FEA datasets for the three operational modes

%mode 1: Non-Polarized
feaExtractSymNonPolar;
feaMutualBoth;
feaCoupling;
% rename variables
fea_nonpol_mutual_p1        =    fea_mutual_p1;
fea_nonpol_mutual_p2        =    fea_mutual_p2;
fea_nonpol_mutual_both      =    fea_mutual_both;
fea_nonpol_self_s           =    fea_self_s;
fea_nonpol_self_p           =    fea_self_p;
fea_nonpol_self_p1          =    fea_self_p1;
fea_nonpol_self_p2          =    fea_self_p2;
fea_nonpol_coupling_p1      =    fea_coupling_p1;
fea_nonpol_coupling_p2      =    fea_coupling_p2;
fea_nonpol_coupling_both    =    fea_coupling_both;

%mode 2: Single
feaExtractSymSingle;
feaMutualBoth;
feaCoupling;
% rename variables
fea_single_mutual_p1        =    fea_mutual_p1;
fea_single_mutual_p2        =    fea_mutual_p2;
fea_single_mutual_both      =    fea_mutual_both;
fea_single_self_s           =    fea_self_s;
fea_single_self_p           =    fea_self_p;
fea_single_self_p1          =    fea_self_p1;
fea_single_self_p2          =    fea_self_p2;
fea_single_coupling_p1      =    fea_coupling_p1;
fea_single_coupling_p2      =    fea_coupling_p2;
fea_single_coupling_both    =    fea_coupling_both;

%mode 3: Polarized
feaExtractSymPolar;
feaMutualBoth;
feaCoupling;
% rename variables
fea_polar_mutual_p1        =    fea_mutual_p1;
fea_polar_mutual_p2        =    fea_mutual_p2;
fea_polar_mutual_both      =    fea_mutual_both;
fea_polar_self_s           =    fea_self_s;
fea_polar_self_p           =    fea_self_p;
fea_polar_self_p1          =    fea_self_p1;
fea_polar_self_p2          =    fea_self_p2;
fea_polar_coupling_p1      =    fea_coupling_p1;
fea_polar_coupling_p2      =    fea_coupling_p2;
fea_polar_coupling_both    =    fea_coupling_both;
