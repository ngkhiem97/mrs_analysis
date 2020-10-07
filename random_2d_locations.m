function locations = random_2d_locations(num_robots, min, max)
%RANDOM_LOCATIONS Generate array of random 2D locations based on the number
%of robots
    locations = min + rand(num_robots, 2)*(max - min);
end