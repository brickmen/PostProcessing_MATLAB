% Step 6: Using the meshgrids calculate the errors

error_fe_threshold = 1.0; %FE value threshold that the error will be calculated for

mg_error_p1 = struct;
mg_error_p2 = struct;
for i = 1:1:length(shared_z_values)
    mg_title = ['z' num2str(shared_z_values(i))];
    
    %Sweeps all datapoints in the p1 mesh
    for j = 1:1:length(mg_fea_p1.(mg_title)(:,1))
        for k = 1:1:length(mg_fea_p1.(mg_title)(1,:))
              
            if mg_fea_p1.(mg_title)(j,k) >= error_fe_threshold
                mg_error_p1.(mg_title)(j,k) = mg_fea_p1.(mg_title)(j,k) - mg_exp_p1.(mg_title)(j,k);
                %mg_error_p1.(mg_title) = rdivide(mg_error_p1.(mg_title), mg_exp_p1.(mg_title));
            else
                mg_error_p1.(mg_title)(j,k)=0;
            end
            
        end
    end
    %Sweeps all datapoints in the p2 mesh
    for j = 1:1:length(mg_fea_p2.(mg_title)(:,1))
        for k = 1:1:length(mg_fea_p2.(mg_title)(1,:))
              
            if mg_fea_p2.(mg_title)(j,k) >= error_fe_threshold
                mg_error_p2.(mg_title)(j,k) = mg_fea_p2.(mg_title)(j,k) - mg_exp_p2.(mg_title)(j,k);
                %mg_error_p1.(mg_title) = rdivide(mg_error_p1.(mg_title), mg_exp_p1.(mg_title));
            else
                mg_error_p2.(mg_title)(j,k)=0;
            end
            
        end
    end
    
    
    
    
    error_mean(i,1) = shared_z_values(i);
    error_mean(i,2) = nanmean(mg_error_p1.(mg_title)(:));
    error_mean(i,3) = nanstd(mg_error_p1.(mg_title)(:));
    error_mean(i,4) = 5;
    error_mean(i,5) = nanmean(mg_error_p2.(mg_title)(:));
    error_mean(i,6) = nanstd(mg_error_p2.(mg_title)(:));
    error_mean(i,7) = 5;
end

