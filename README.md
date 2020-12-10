# Dataset
The dataset selected is the [Electrical Grid Stability Simulated Data](http://archive.ics.uci.edu/ml/datasets/Electrical+Grid+Stability+Simulated+Data+#). 
<div>
<img src="/charts/bar_class.png" width="300px"</img> 
</div>

## Features after preprocessing
- Binary classification (last column): 1 = stable | -1 = unstable
- 10,000 data points (3,620 stable and 6,380 unstable)
- 12 real inputs
- Shuffled
- 20% for testing and 80% for training


### Important notes
- Since this dataset is imbalanced, we will use the F1-score instead of the binary loss.
- The last column of the dataset, i.e., the class label, was replaced for 1 = stable | -1 = unstable
- The last column of the inputs, i.e., index 13, was removed since it is equal to the class itself and has no use in this analysis. 


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


