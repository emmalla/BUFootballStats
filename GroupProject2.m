% Group Project 2 
% 

%% data (2)

rand_data = rand(1,50);
randn_data = randn(1,50);
bu_football_data = [6 6 3 6 5 5 7 2 1 5 4 4 3 4 2 1 2 5 5 3 5 9 5 3 2 3 5 5 3 3 6 8 9 6 5 9 9 3 4 3 4 4 5 4 3 12 9 3 1 1];
bu_football_years = [1948 1949 1950 1951 1952 1953 1954 1955 1956 1957 1958 1959 1960 1961 1962 1963 1964 1965 1966 1967 1968 1969 1970 1971 1972 1973 1974 1975 1976 1977 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997];

%% plots (3)

figure(1)
hist(rand_data,10);
title('rand Data Histogram with 10 Bins')
xlabel('Value')
ylabel('Occurrences')

figure(2)
hist(randn_data,10);
title('randn Data Histogram with 10 Bins')
xlabel('Value')
ylabel('Occurrences')

figure(3)
plot(bu_football_years, bu_football_data, 'r-o');
title('BU Football Wins by Year')
xlabel('Year')
ylabel('Wins')
ylim([0, 13])
xlim([1945, 2000])

%% statistics (4)

rand_data_mean = mean(rand_data);
randn_data_mean = mean(randn_data);
bu_football_data_mean = mean(bu_football_data);

rand_data_median = median(rand_data);
randn_data_median = median(randn_data);
bu_football_data_median = median(bu_football_data);

rand_data_std = std(rand_data);
randn_data_std = std(randn_data);
bu_football_data_std = std(bu_football_data);

rand_data_iqr = iqr(rand_data);
randn_data_iqr = iqr(randn_data);
bu_football_data_iqr = iqr(bu_football_data);

%% z-scores (5)

rand_data_vectorized_zscore = ((rand_data - rand_data_mean) / rand_data_std)
randn_data_vectorized_zscore = ((randn_data - randn_data_mean) / randn_data_std)
bu_football_data_vectorized_zscore = ((bu_football_data - bu_football_data_mean) / bu_football_data_std)

rand_data_matlab_zscore = zscore(rand_data)
randn_data_matlab_zscore = zscore(randn_data)
bu_football_data_matlab_zscore = zscore(bu_football_data)

%% normalized data plots (6)

figure(4)

subplot(2, 2, 1);
hist(rand_data_matlab_zscore, 3);
title('Normalized rand Data Histogram with 3 Bins')
xlabel('Values')
ylabel('Occurrences')

subplot(2, 2, 2);
hist(rand_data_matlab_zscore, 5);
title('Normalized rand Data Histogram with 5 Bins')
xlabel('Values')
ylabel('Occurrences')

subplot(2, 2, 3);
hist(rand_data_matlab_zscore, 10);
title('Normalized rand Data Histogram with 10 Bins')
xlabel('Values')
ylabel('Occurrences')

subplot(2, 2, 4);
hist(rand_data_matlab_zscore, 20);
title('Normalized rand Data Histogram with 20 Bins')
xlabel('Values')
ylabel('Occurrences')

%% summaries (7)

