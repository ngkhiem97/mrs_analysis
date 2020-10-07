function d_a1 = d_a1(locations,goals)
%D_A1 Calculate sum of distances of each robot location to goal
    if (size(locations, 2) ~= size(goals, 2))
        error("2D locations and goals must have the same size")
    end

    d_a1 = 0;
    for g = 1:size(goals, 1)
        distances = sqrt(sum(bsxfun(@minus, locations, goals(g,:)).^2,2));
        d_a1 = d_a1 + min(distances);
        locations(distances == min(distances),:) = [];
    end
end

