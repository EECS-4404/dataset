# Dataset
The dataset selected is the [Electrical Grid Stability Simulated Data](http://archive.ics.uci.edu/ml/datasets/Electrical+Grid+Stability+Simulated+Data+#). 
<div>
<img src="/charts/bar_class.png" width="300px"</img> 
</div>

## Features after preprocessing
- Binary classification (last column): 1 = stable | -1 = unstable
- 7,240 data points (3,620 for each class)
- 12 real inputs
- Shuffled


### Important notes
- Since this dataset was imbalanced, we subsampled the class with fewer data points so each class has the same number of data points.
- The last column of the dataset, i.e., the class, was replaced for 1 = stable | -1 = unstable
- The last column of the inputs, i.e. i = 13, was removed since it is equal to the class and has no use in the analysis. 


## Structure
```
dataset
│   └──README.md
│   └──split_dataset.m
│
└───training
│   └──dataset_training.txt
│   
└───testing
│   └──dataset_testing.txt  
│ 
└───charts
    └──bar_class.eps
    └──bar_class.png

```


