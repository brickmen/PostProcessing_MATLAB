% Applies Y Symmetry to Dataset <results> to double its size 
initial_length = length(results);
for i = 1:1:initial_length
    %clone values and append to dataset
    results(i+initial_length, :) = results(i, :);
    %swap signs of Y values
    results(i+initial_length, 2) = -results(i, 2);
    
end