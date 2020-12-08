% Shuffle and split dataset
x = dataset(:,1:end-1);  
t = dataset(:,end);  

[D,n] = size(dataset);

% original dataset
x = [x t];

% shuffle the dataset
random_data = dataset(randperm(D), :);

% training
n_training = floor(D * 0.8);
data_training = random_data(1:n_training,:);

% testing 
data_testing = random_data(n_training+1:end,:);