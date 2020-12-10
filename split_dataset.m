% Shuffle and split dataset

% removes column stab
dataset = [dataset(:,1:end-2) dataset(:,end)];

% gets size
[D,n] = size(dataset);

% shuffle the dataset
dataset = dataset(randperm(D), :);

% the class is imbalanced (has a 43% difference between the two classes)
n_stable = 0;
n_unstable = 0;

% plot the class
for i=1:D
if(dataset(i,end)==1)
n_stable = n_stable + 1;
else
n_unstable = n_unstable + 1;
end
end

figure
axis = {'Stable','Unstable'};
bar_data = [n_stable, n_unstable]
bar(bar_data);
newXticklabel = {'Stable','Unstable'};
set(gca,'XtickLabel',newXticklabel);
xlabel('Class');
ylabel('Samples')
title('Class Distribution');
print -depsc bar_class

% training
n_training = floor(D * 0.8);
data_training = dataset(1:n_training,:);

% testing
data_testing = dataset(n_training+1:end,:);

% writes output
dlmwrite('dataset_training.txt',data_training);
dlmwrite('dataset_testing.txt',data_testing);
