% Step 1: Set the correct mutual inductance values inside each dataset


%take absolute values of mutual for FEA
FEAmutual = FEAimport;

FEAmutual(:,4) = abs(FEAimport(:,4));
FEAmutual(:,5) = abs(FEAimport(:,5));


% Set the value of mutual inductance to the measured
% using M = Voc / ( i1 * 2pi * f)

%test limit for Outliers
Mp1_max = 2*max(FEAmutual(:,4));
Mp2_max = 2*max(FEAmutual(:,5));

index = 1;
for i = 1:1:length(EXPimport)
    Mp1 = 1000000* EXPimport(i,6) /  (EXPimport(i,5)*2*pi*EXPimport(i,10));
    Mp2 = 1000000* EXPimport(i,7) /  (EXPimport(i,5)*2*pi*EXPimport(i,10));
    if Mp1 > Mp1_max || Mp2 > Mp2_max
        fprintf('Mutual exceeds max limits at index %i consider testing for outliers or reducing data set \n', i)
    else
        EXPmutual(index,:) = [ EXPimport(i,1) EXPimport(i,2) EXPimport(i,3) Mp1 Mp2 ];
        index = index+1;
    end
end