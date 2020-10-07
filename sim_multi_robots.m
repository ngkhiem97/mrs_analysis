% number of robots spawned
num_robots = 20;

% min and max values of the 2d dimension
min_d = 0; max_d = 100;

d_a1_array = zeros(num_robots,1);
d_a2_array = zeros(num_robots,1);

for i = 1:num_robots
    % locations of each robot
    locations = random_2d_locations(i, min_d, max_d);
    
    % goals for the robots
    goals = random_2d_locations(i, min_d, max_d);
    
    distance_a1 = d_a1(locations, goals);
    distance_a2 = d_a2(locations, goals);
    
    d_a1_array(i) = distance_a1;
    d_a2_array(i) = distance_a2;
end

d(:,1) = d_a1_array;
d(:,2) = d_a2_array;

d_percentage = d_a1_array./d_a2_array;