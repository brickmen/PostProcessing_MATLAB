% Trim Datasets to reduced Area defined by <x/y>_<min/max/>_lim, input: dataset_to_trim, outputs: reduced_dataset

index=1;
for i = 1:1:length(dataset_to_trim)
    if dataset_to_trim(i,1) >= x_min_lim && dataset_to_trim(i,1) >= x_min_lim
        if dataset_to_trim(i,2) >= y_min_lim && dataset_to_trim(i,2) >= y_min_lim
            reduced_dataset(index,:) = dataset_to_trim (i,:);
            index = index +1;
        end
    end
end
fprintf('Dataset reduced from %i to %i by limits  \n', i, index)

