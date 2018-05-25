% matches <input> XYZ positions to the <match> dataset, outputs <output>
input_val = input(input(:,3)==match(3),:);
input_val = input_val(input_val(:,2)==match(2),:);
input_val = input_val(input_val(:,1)==match(1),:);

% Clone First Matching Row
output(:) = input_val(1,:);