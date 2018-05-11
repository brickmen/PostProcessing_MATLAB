% Finds multiple Values at positions defined in script, output: found_values

find_xs = [ 2 50]
find_ys = [ 0 50]
find_zs = [ 25 45 75 ]
index= 1;
for i = 1:1:length(find_xs)
    find_x = find_xs(i);
    find_y = find_ys(i);
    for j = 1:1:length(find_zs)
        find_z = find_zs(j);
        found_values(index,:) = [ find_x find_y find_z 0 0 0];
        results = exp_mutual_both;
        getSingleValue;
        found_values(index,4) = value;
        results = exp_mutual_p1;
        getSingleValue;
        found_values(index,5) = value;
        results = exp_mutual_p2;
        getSingleValue;
        found_values(index,6) = value;
        
        index = index +1;
    end
    
end




