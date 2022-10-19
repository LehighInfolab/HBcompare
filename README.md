# HBcompare

HBcompare is a method that classifies protein structures according to ligand binding preference categories by analyzing hydrogen bond topology. This topological analysis applies GCN implementation to the classification of protein classes. HBcompare excludes other characteristics of protein structure so that, in the event of accurate classification, it can implicate the involvement of hydrogen bonds in selective binding.

## How to use HBcompare -
HBcompare was implemented in jupyter notebook as a matter of making the code more accessible to anyone wanting to understand the code and manipulate it. This notebook is able to be run on Google Colab as of 10/18/2022. See jupyter notebook for detailed descriptions of functions, how to use, and how the GCN is setup.

The full dataset can be obtained here: [Not yet uploaded]

## Main functions -

### Train HBcompare

run_HBCompare_training() function runs the training of graph features in the GCN. 

Overview:
- Input: The function expects that a dataset has already been loaded, the graphs have been loaded as a graph_pool, and a batch loader created as batch_nodes.

- Output: Performance scores. More scores can be added to be appended to an array while running through iterations, and then printed at the end.

1. The GCN first creates a session and sets up the GCN architecture
2. An outer for loop goes through all 50 epochs
3. 2 inner for loops:
  - First loop does unsupervised training through all graph batches and updates the loss function
  - 2nd loop does a 5-fold CV and gives the average and stdev of all folds

*** Warning: google colab times out after a while if not constantly interacting, and 10 iteration loops for a dataset can take 2 hrs (650s * 10 iterations) -> for all 5 datasets can take 7-8 hrs. Recommended to run one dataset at a time and make sure to check captcha every once in a while, or run on local jupyter notebook.

### Learning Curve for HBcompare

This function gets the training and testing accuracy of HBcompare and plots the values.

Differences between this and the main HBcompare training function:

- Adds 50 more epochs to show learning curve after maximum saturation
- Adds predictions on training set to get training accuracy
- Loops through all datasets in the "all_datasets" list
- Displays learning curve figures for all datasets

## Command-line Options - 

(9/23/2022)
To run the notebook with specific parameters, go to the "Parameters" code cell and edit arguments as needed.

--run_folder&emsp; 		Path to the root directory of the dataset folder \
\
--dataset&emsp; 			Name of dataset folder. Default = "dataset1", but can go up to "dataset5". \
\
--learning_rate	&emsp; 	Learning rate. Default=0.001.\
\
--batch_size&emsp; 		Batch size. Default=4.\
\
--num_epochs&emsp; 		Number of training epochs. Default=50.\
\
--saveStep&emsp; 			Number of save steps. Default=1.\
\
--allow_soft_placement&emsp; 
					Allow device soft placement. Default=True.\
					\
--log_device_placement&emsp; 
					Log placement of ops on devices. Default=False.\
					\
--model_name	&emsp; 	Name of dataset for output folder naming. Default=MUTAG. Other datasets that may be used are "COLLAB","IMDBBINARY","IMDBMULTI", and "REDDIT", but have not been included here.\
\
--dropout	&emsp; 		Dropout ratio. Default=0.5.\
\
--num_GNN_layers&emsp; 	Number of stacked hidden layers. Default=6.\
\
--hidden_size&emsp; 		Size of each hidden layer. Default=64.\
\
--num_sampled	&emsp; 	Default=512.\

After editing parameters as needed, connect Colab to your google account and run the desired code blocks. There are many code blocks that are repetitions of the HBcompare training block, but with small tweaks for different experiments and uses. The approximate runtime on a machine with 8-core and 32GB ram was 147s, 98s, 634s, 441s and 117s for datasets 1-5 respectively.
