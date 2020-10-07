function d_a2 = d_a2(locations,goals)
%D_A2 Calculate sum of distances of each robot location to goal
    if (size(locations, 2) ~= size(goals, 2))
        error("2D locations and goals must have the same size")
    end
    
    permu_goals_x = perms(goals(:,1));
    permu_goals_y = perms(goals(:,2));
    
    permu_goals(:,:,1) = permu_goals_x;
    permu_goals(:,:,2) = permu_goals_y;

    distances = sqrt(sum(bsxfun(@minus, locations, squeeze(permu_goals(1,:,:))).^2,2));
    d_a2 = min(distances);
    for g = 2:size(permu_goals, 1)
        distances = sqrt(sum(bsxfun(@minus, locations, squeeze(permu_goals(g,:,:))).^2,2));
        if d_a2 > min(distances)
            d_a2 = min(distances);
        end
    end
end