% Group Project 2 
% 

rand_data = rand(1,50);
randn_data = randn(1,50);
bu_football_data = []; 
bu_football_years = [];

%% plots (3)
figure
hist(rand_data,10);

figure
hist(randn_data,10);

%% statistics (4)

rand_data_mean = mean(rand_data);
randn_data_mean = mean(randn_data);
bu_football_data = mean(bu_football_data);

rand_data_median = median(rand_data);
randn_data_median = median(randn_data);
bu_football_data_median = median(bu_football_data);

rand_data_std = std(rand_data);
randn_data_std = std(randn_data);
bu_football_data_std = std(bu_football_data);
