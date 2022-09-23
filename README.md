# HBcompare

HBcompare is a method that classifies protein structures according to ligand binding preference categories by analyzing hydrogen bond topology. This topological analysis applies GCN implementation to the classification of protein classes. HBcompare excludes other characteristics of protein structure so that, in the event of accurate classification, it can implicate the involvement of hydrogen bonds in selective binding.

## How to use HBcompare -
HBcompare was implemented in jupyter notebook as a matter of making the code more accessible to someone trying to understand it by manipulating it. This notebook is able to be run on Google Colab as of 9/23/2022.


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

After editing parameters as needed, connect Colab to your google account and run all. The approximate runtime on a machine with 8-core and 32GB ram was ~60 seconds.
