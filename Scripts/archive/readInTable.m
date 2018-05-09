% Reads table values into XYZ values outputting import

% Slide (X) | Offset (Y) | Gap (Z) | M (p1) | M (p2) | ....
%
Tr1 = readtable(filename1);
%Tr2 = readtable(filename2);

%Read number of columns
W = width(Tr1);
H = height(Tr1);

%importfile header without truncating
M = importdata(filename1,' ',1);
C = strsplit(char(M),'","');
index = 1;

% Run Along Columns
for col = 2:1:W
    
    details = C(col);
    str = string(details);
    scale = 1;
    if contains( str, 'nH')
        scale = 0.001;
    elseif contains( str, 'mH')
        scale = 1000;
    end
    offset = offset_nominal;
    if contains( str, 'offset')
        %trim title down into sting values of gap and offset
        offsetstr = str.extractAfter('offset=''');
        offsetstr = offsetstr.extractBefore('mm');
        offset = sscanf(offsetstr, '%f');
    end
    gap = gap_nominal;
    if contains( str, 'gap')
        gapstr = str.extractAfter('gap=''');
        gapstr = gapstr.extractBefore('mm');
        gap = sscanf(gapstr, '%f');
    end

    % Run along Rows
    for row = 1:1:H
        
              
        if not(isnan(Tr1{row,col}))
            value = [ Tr1{row,1}, offset, gap , Tr1{row,col}*scale ];
            import(index,:)= value;
            index = index +1;
        end
        
                
        
    end
    
    
end

fprintf( ' read: %i data points in file', index)