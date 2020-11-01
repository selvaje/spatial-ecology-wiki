a:88:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:55:"Regression with Artificial Neural Networks (Tensorflow)";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:254:"In class, we saw that the process of training an Artificial Neural Network (ANN) consists of finding the optimizer and set of parameters that minimize a cost function. This cost function often is multidimensional and presents a highly complex landscape (";}i:2;i:72;}i:5;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:32:"https://arxiv.org/abs/1712.09913";i:1;s:16:" Li et. al, 2017";}i:2;i:326;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"), as can be appreciated in the ";}i:2;i:380;}i:7;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:53:"http://www.telesens.co/loss-landscape-viz/viewer.html";i:1;s:31:" 3D Interactive Loss Visualizer";}i:2;i:412;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:502;}i:9;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:503;}i:2;i:5;i:3;s:3:"  
";}i:2;i:503;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"
For this course, we will learn how to design an Artificial Neural Network (ANN) using ";}i:2;i:506;}i:11;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:35:"https://www.tensorflow.org/overview";i:1;s:11:" TensorFlow";}i:2;i:593;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:122:". TensorFlow is a Python library released in 2015 by Google to facilitate the design and training of Deep Learning models.";}i:2;i:645;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:767;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:767;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"Let's get started!";}i:2;i:769;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:788;}i:17;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:865:"cd /home/user/ost4sem/exercise/machine_learning
wget -N http://spatial-ecology.net/ost4sem/exercise/machine_learning/US_TN_season_1_proc.csv
cd /home/user/ost4sem/exercise/machine_learning/NN
wget -N http://spatial-ecology.net/ost4sem/exercise/machine_learning/NN/ANN_Regression_SGD
wget -N http://spatial-ecology.net/ost4sem/exercise/machine_learning/NN/ANN_Regression_RMSprop
wget -N http://spatial-ecology.net/ost4sem/exercise/machine_learning/NN/ANN_Regression_ADAM
mv -f ANN_Regression_ADAM ANN_Regression_ADAM.py
mv -f ANN_Regression_SGD ANN_Regression_SGD.py
mv -f ANN_Regression_RMSprop ANN_Regression_RMSprop.py
rstudio /home/user/ost4sem/exercise/machine_learning/NN/ANN_Regression_SGD.py &
rstudio /home/user/ost4sem/exercise/machine_learning/NN/ANN_Regression_RMSprop.py &
rstudio /home/user/ost4sem/exercise/machine_learning/NN/ANN_Regression_ADAM.py &";}i:2;i:788;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:788;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:132:"For this tutorial, we will explore some of the most used optimizers for ANNs and their respective hyperparameters. Let's start with ";}i:2;i:1680;}i:20;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:57:"https://en.wikipedia.org/wiki/Stochastic_gradient_descent";i:1;s:34:" Stochastic Gradient Descent (SGD)";}i:2;i:1812;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:":";}i:2;i:1909;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1910;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:10251:"
from __future__ import absolute_import, division, print_function
import pathlib
import matplotlib.pyplot as plt #Matplotlib is a plotting
import pandas as pd #data manipulation and analysis (numerical tables and time series)
from sklearn.metrics import r2_score #various classification, regression and clustering algorithms. We use for metrics
from sklearn.preprocessing import MinMaxScaler
import seaborn as sns # data visualization library based on matplotlib
import tensorflow as tf #dataflow and differentiable programming (machine learning applications)
from tensorflow import keras #neural-network building blocks
from tensorflow.keras import layers
from tensorflow.keras.models import model_from_json
import os #operation system interface 
print(tf.__version__)

dir_path = os.getcwd()
root_NN = '/home/user/ost4sem/exercise/machine_learning/NN'
root_ML = '/home/user/ost4sem/exercise/machine_learning/'
os.chdir(root_NN)
dirName = 'SGD'
try:
    # Create target Directory
    os.mkdir(dirName)
    print("Directory " , dirName ,  " Created ") 
except FileExistsError:
    print("Directory " , dirName ,  " already exists")

path_to_save = root_NN + '/' + dirName
lr_val = 0.01
momentum_val = 0.9
nesterov_val = 'True'
decay_val = 1e-6


dataset = pd.read_csv(root_ML + "US_TN_season_1_proc.csv")	
dataset.tail()

#Check for NaN in this table and drop them if there are
dataset.isna().sum()
dataset.dropna()

#Split the dataset into a training set and a test set.
dataset_orig = dataset #keep a backup of the original dataset. Might be useful.

# Remove extra variables from the dataset (keep just the 47 predictors and the 'bcmean' (what we are predicting)
dataset = dataset.drop(["RVunif_bc","mean","std","cv","longitude","latitude","RVunif"],axis=1)
dataset_orig2 = dataset
dataset.to_csv('dataset_clean.csv',index=False) #Saving the csv file just for easier visualization of the raw data

# Rescale: differences in scales accross input variables may increase the difficulty of the problem being modeled and results on unstable weights for connections
sc = MinMaxScaler(feature_range = (0,1)) #Scaling features to a range between 0 and 1

# Scaling and translating each feature to our chosen range
dataset = sc.fit_transform(dataset) 
dataset = pd.DataFrame(dataset, columns = dataset_orig2.columns)
dataset_scaled = dataset #Just backup
inverse_data = sc.inverse_transform(dataset) #just to make sure it works

train_dataset = dataset.sample(frac=0.8,random_state=0)
test_dataset = dataset.drop(train_dataset.index)
train_dataset_orig = dataset_orig2.sample(frac=0.8,random_state=0) #just backup
test_dataset_orig =  dataset_orig2.drop(train_dataset_orig.index) #just backup

#Inspect the original mean (still missing some formatting)
sns.set()
f, (ax1,ax2) = plt.subplots(2, 1,sharex=True)
sns.distplot(train_dataset["bcmean"],hist=True,kde=False,bins=75,color='darkblue',  ax=ax1, axlabel=False)
sns.kdeplot(train_dataset["bcmean"],bw=0.15,legend=True,color='darkblue', ax=ax2)

ax1.set_title('Original  histogram')
ax1.legend(['bcmean'])
ax2.set_title('KDE')
ax2.set_xlabel('Mean Concentration N')
ax1.set_ylabel('Count')
ax2.set_ylabel('Dist')
plt.savefig(path_to_save + '/histograms' + '.png', bbox_inches='tight')
# plt.show()

#Check the overall stats
train_stats = train_dataset.describe()
train_stats.pop('bcmean') #because that is what we are trying to predict
train_stats = train_stats.transpose()
train_stats #now train_stats has 47 predictors (as described in the paper).

# Remove the output from our list of predictors
train_dataset.to_csv('train_dataset.csv',index=False) 
train_labels = train_dataset.pop('bcmean')
test_dataset.to_csv('test_dataset.csv',index=False)
test_labels = test_dataset.pop('bcmean')


# Inspect the joint distribution of a few pairs of columns from the training set
# We can observe that the process of scalling the data did not affect the skewness of the data
#sns.pairplot(train_dataset[["lc09", "lc07", "hydro05", "hydro07","soil01","dem"]], diag_kind="kde")
## plt.show()

#Normalize the data because the data has very different ranges (not really crucial for the prediction to use the raw data)
#def norm(x):
# return (x - train_stats['mean']) / train_stats['std']
normed_train_data = train_dataset #norm(train_dataset)
normed_test_data = test_dataset #norm(test_dataset)

# Build the model. 'Sequential' model with two densely connected hidden layers,and an output layer that returns a single, continuous value
# The architecture can be freely modified (pretty much whatever works better for your data)
def build_model():
  model = keras.Sequential([
    layers.Dense(64,kernel_initializer='normal',activation=tf.nn.relu,input_shape=[len(train_dataset.keys())]),
    layers.Dropout(0.2),
    layers.Dense(64, activation=tf.nn.relu),
    layers.Dropout(0.2),
    layers.Dense(1,kernel_initializer='normal',activation='relu')
  ])
  optimizer = tf.keras.optimizers.SGD(lr=lr_val, momentum=momentum_val, decay=decay_val, nesterov=nesterov_val) #many other options for optmizer
  model.compile(loss='mean_squared_error',
                optimizer=optimizer,
                metrics=['mean_absolute_error', 'mean_squared_error']) #When dealing with classification, 'accuracy' is very useful as well
  return model

model = build_model()
model.summary()
# Example -> Param #1: 47 (input) * 64 (neurons 1st layer) + 64 (biases) = 3072  

#Take 10 samples from training dataset for quick test
example_batch = normed_train_data[:10]
example_result = model.predict(example_batch)
example_result

early_stop = keras.callbacks.EarlyStopping(monitor='val_loss', min_delta=0.001, patience=100, mode='auto', baseline=None, restore_best_weights=True)
# The patience parameter is the amount of epochs to check for improvement
# Example
#val_loss: 0.5921 < current best
#val_loss: 0.5731 < current best
#val_loss: 0.5956 < patience 1
#val_loss: 0.5753 < patience 2
#val_loss: 0.5977 < patience >2, stopping the training

EPOCHS = 5000

history = model.fit(
  normed_train_data, train_labels,
  epochs=EPOCHS, 
  validation_split=0.1,
  shuffle=True, verbose=2,
  callbacks=[early_stop])

#Plot the progress of the training
hist = pd.DataFrame(history.history)
hist['epoch'] = history.epoch
hist.tail()

def plot_history(history):
  hist = pd.DataFrame(history.history)
  hist['epoch'] = history.epoch
  plt.figure()
  plt.xlabel('Epoch')
  plt.ylabel('Mean Abs Error [Mean Conc. N]')
  plt.plot(hist['epoch'], hist['mean_absolute_error'],
           label='Train Error')
  plt.plot(hist['epoch'], hist['val_mean_absolute_error'],
           label = 'Val Error')
  #plt.ylim([0,1])
  plt.legend()
  plt.savefig(path_to_save + '/mean_asb_error_lr' + str(lr_val) + '_moment' + str(momentum_val) + '_nest' + str(nesterov_val) + '.png', bbox_inches='tight')
  plt.figure()
  plt.xlabel('Epoch')
  plt.ylabel('Mean Square Error [$(Mean Conc.)^2$]')
  plt.plot(hist['epoch'], hist['mean_squared_error'],
           label='Train Error')
  plt.plot(hist['epoch'], hist['val_mean_squared_error'],
           label = 'Val Error')
  #plt.ylim([0,3])
  plt.legend()
  plt.savefig(path_to_save + '/mean_sq_error_lr' + str(lr_val) + '_moment' + str(momentum_val) + '_nest' + str(nesterov_val) + '.png', bbox_inches='tight')
  # plt.show()

plot_history(history)

#Time for a real test
f, (ax1,ax2) = plt.subplots(1,2, sharey=True)
test_predictions = model.predict(normed_test_data).flatten()
r = r2_score(test_labels, test_predictions)
ax1.scatter(test_labels, test_predictions,alpha=0.5, label='$R^2$ = %.3f' % (r))
ax1.legend(loc="upper left")
ax1.set_xlabel('True Values [Mean Conc.]')
ax1.set_ylabel('Predictions [Mean Conc.]')
ax1.axis('equal')
ax1.axis('square')
ax1.set_xlim([0,1])
ax1.set_ylim([0,1])
_ = ax1.plot([-100, 100], [-100, 100], 'r:')
ax1.set_title('Test dataset')
f.set_figheight(30)
f.set_figwidth(10)
#plt.show()
#plt.close('all')

#Whole dataset
dataset_labels = dataset.pop('bcmean')
normed_dataset = dataset
dataset_predictions = model.predict(normed_dataset).flatten()
r = r2_score(dataset_labels, dataset_predictions)
ax2.scatter(dataset_labels, dataset_predictions, alpha=0.5, label='$R^2$ = %.3f' % (r))
ax2.legend(loc="upper left")
ax2.set_xlabel('True Values [Mean Conc.]')
ax2.set_ylabel('Predictions [Mean Conc.]')
ax2.axis('equal')
ax2.axis('square')
ax2.set_xlim([0,1])
ax2.set_ylim([0,1])
_ = ax2.plot([-100, 100], [-100, 100], 'r:')
ax2.set_title('Whole dataset')
# plt.show()
plt.savefig(path_to_save + '/R_scaled_lr' + str(lr_val) + '_moment' + str(momentum_val) + '_nest' + str(nesterov_val) + '.png', bbox_inches='tight')
#plt.close('all')

#Undo scale step
normed_test_data['bcmean'] = test_predictions
inverse_data = sc.inverse_transform(normed_test_data)
inverse_data = pd.DataFrame(inverse_data, columns = dataset_orig2.columns)
test_predictions = inverse_data.pop('bcmean')
test_labels = test_dataset_orig.pop('bcmean')
f, (ax1,ax2) = plt.subplots(1,2, sharey=True)
r = r2_score(test_labels, test_predictions)
ax1.scatter(test_labels, test_predictions, alpha=0.5, label='$R^2$ = %.3f' % (r))
ax1.legend(loc="upper left")
ax1.set_xlabel('True Values [Mean Conc.]')
ax1.set_ylabel('Predictions [Mean Conc.]')
ax1.axis('equal')
ax1.axis('square')
ax1.set_xlim([-3,3])
ax1.set_ylim([-3,3])
_ = ax1.plot([-100, 100], [-100, 100], 'r:')
ax1.set_title('Test dataset')
f.set_figheight(30)
f.set_figwidth(10)
#plt.show()

#Whole dataset
normed_dataset['bcmean'] = dataset_predictions
inverse_data = sc.inverse_transform(normed_dataset)
inverse_data = pd.DataFrame(inverse_data, columns = dataset_orig2.columns)
dataset_predictions = inverse_data.pop('bcmean')
dataset_labels = dataset_orig2.pop('bcmean')
r = r2_score(dataset_labels, dataset_predictions)
ax2.scatter(dataset_labels, dataset_predictions, alpha=0.5, label='$R^2$ = %.3f' % (r))
ax2.legend(loc="upper left")
ax2.set_xlabel('True Values [Mean Conc.]')
ax2.set_ylabel('Predictions [Mean Conc.]')
ax2.axis('equal')
ax2.axis('square')
ax2.set_xlim([-3,3])
ax2.set_ylim([-3,3])
_ = ax2.plot([-100, 100], [-100, 100], 'r:')
ax2.set_title('Whole dataset')
# plt.show()
plt.savefig(path_to_save + '/R_unscaled_lr' + str(lr_val) + '_moment' + str(momentum_val) + '_nest' + str(nesterov_val) + '.png', bbox_inches='tight')
del model
";i:1;s:7:"python|";i:2;s:21:"ANN_Regression_SGD.py";}i:2;i:1917;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1917;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:209:"The performance of the training process can be verified by checking the drop in error rate (MSE and/or MAE). As we can see in the example below, the longer the network is being trained, lower is the error rate";}i:2;i:12208;}i:26;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:12417;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" But careful to not overfit!";}i:2;i:12420;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12448;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12448;}i:30;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:51:":wiki:mean_asb_error_lr0.001_moment0.9_nesttrue.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:12450;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12508;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12508;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:280:"Although the error seems to be decreasing, the real performance test is done on the test set (not seen by the network before). A correlation plot between real and predicted value is a good measurement of regression quality. Below we see the correlation obtained by the SGD output.";}i:2;i:12510;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12790;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12790;}i:36;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:47:":wiki:r_unscaled_lr0.001_moment0.9_nesttrue.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:12792;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12846;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12846;}i:39;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:1;i:1;s:2:"**";}i:2;i:1;i:3;s:2:"**";}i:2;i:12848;}i:40;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:3;i:1;s:9:"EXERCISE:";}i:2;i:3;i:3;s:9:"EXERCISE:";}i:2;i:12850;}i:41;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:4;i:1;s:2:"**";}i:2;i:4;i:3;s:2:"**";}i:2;i:12859;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:228:" Why don't you try to improve the performance of the SGD on our data? Play with the hyperparameters (learning rate, momentum, decaying rate, early stopping, dropout, validation split, neurons per layer and depth of the network. ";}i:2;i:12861;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13089;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13089;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"Now let's check something more ";}i:2;i:13091;}i:46;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:13122;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"modern";}i:2;i:13124;}i:48;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:13130;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:". ";}i:2;i:13132;}i:50;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:71:"http://www.cs.toronto.edu/~tijmen/csc321/slides/lecture_slides_lec6.pdf";i:1;s:8:" RMSprop";}i:2;i:13134;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" is an improved version of the SGD method.";}i:2;i:13219;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13261;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:9529:"
from __future__ import absolute_import, division, print_function
import pathlib
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.metrics import r2_score
from sklearn.preprocessing import MinMaxScaler
import seaborn as sns
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.models import model_from_json
import os 
print(tf.__version__)

# root_ML = os.getcwd()
root_NN = '/home/user/ost4sem/exercise/machine_learning/NN/'
root_ML = '/home/user/ost4sem/exercise/machine_learning/'
os.chdir(root_NN)
dirName = 'RMSprop'
try:
    # Create target Directory
    os.mkdir(dirName)
    print("Directory " , dirName ,  " Created ") 
except FileExistsError:
    print("Directory " , dirName ,  " already exists")

path_to_save = root_NN + dirName
# lr_range=[0.05, 0.01, 0.005, 0.001, 0.0005, 0.0001]
lr_val=0.001
# momentum_range = [0.95, 0.90, 0.85] #momentum = rho in this context
momentum_val = 0.9
decay_val = 1e-6


plt.close('all')
dataset = pd.read_csv(root_ML + "US_TN_season_1_proc.csv")	
dataset.tail()

#Check for NaN in this table and drop them if there are
dataset.isna().sum()
dataset.dropna()

#Split the dataset into a training set and a test set.
dataset_orig = dataset #keep a backup of the original dataset. Might be useful.

# Remove extra variables from the dataset (keep just the 47 predictors and the 'bcmean' (what we are predicting)
dataset = dataset.drop(["RVunif_bc","mean","std","cv","longitude","latitude","RVunif"],axis=1)
dataset_orig2 = dataset
dataset.to_csv('dataset_clean.csv',index=False) #Saving the csv file just for easier visualization of the raw data

# Rescale: differences in scales accross input variables may increase the difficulty of the problem being modeled and results on unstable weights for connections
sc = MinMaxScaler(feature_range = (0,1)) #Scaling features to a range between 0 and 1

# Scaling and translating each feature to our chosen range
dataset = sc.fit_transform(dataset) 
dataset = pd.DataFrame(dataset, columns = dataset_orig2.columns)
dataset_scaled = dataset #Just backup
inverse_data = sc.inverse_transform(dataset) #just to make sure it works

train_dataset = dataset.sample(frac=0.8,random_state=0)
test_dataset = dataset.drop(train_dataset.index)
train_dataset_orig = dataset_orig2.sample(frac=0.8,random_state=0) #just backup
test_dataset_orig =  dataset_orig2.drop(train_dataset_orig.index) #just backup

#Inspect the original mean (still missing some formatting)
sns.set()
f, (ax1,ax2) = plt.subplots(2, 1,sharex=True)
sns.distplot(train_dataset["bcmean"],hist=True,kde=False,bins=75,color='darkblue',  ax=ax1, axlabel=False)
sns.kdeplot(train_dataset["bcmean"],bw=0.15,legend=True,color='darkblue', ax=ax2)

ax1.set_title('Original  histogram')
ax1.legend(['bcmean'])
ax2.set_title('KDE')
ax2.set_xlabel('Mean Concentration N')
ax1.set_ylabel('Count')
ax2.set_ylabel('Dist')
# plt.show()

#Check the overall stats
train_stats = train_dataset.describe()
train_stats.pop('bcmean') #because that is what we are trying to predict
train_stats = train_stats.transpose()
train_stats #now train_stats has 47 predictors (as described in the paper).

# Remove the output from our list of predictors
train_dataset.to_csv('train_dataset.csv',index=False) 
train_labels = train_dataset.pop('bcmean')
test_dataset.to_csv('test_dataset.csv',index=False)
test_labels = test_dataset.pop('bcmean')


# Inspect the joint distribution of a few pairs of columns from the training set
# We can observe that the process of scalling the data did not affect the skewness of the data
#sns.pairplot(train_dataset[["lc09", "lc07", "hydro05", "hydro07","soil01","dem"]], diag_kind="kde")
## plt.show()

#Normalize the data because the data has very different ranges (not really crucial for the prediction to use the raw data)
#def norm(x):
# return (x - train_stats['mean']) / train_stats['std']
normed_train_data = train_dataset #norm(train_dataset)
normed_test_data = test_dataset #norm(test_dataset)

# Build the model. 'Sequential' model with two densely connected hidden layers, and an output layer that returns a single, continuous value
# The architecture can be freely modified (pretty much whatever works better for your data)
def build_model():
  model = keras.Sequential([
    layers.Dense(64,kernel_initializer='normal',activation=tf.nn.relu,input_shape=[len(train_dataset.keys())]),
    layers.Dropout(0.2),
    layers.Dense(64, activation=tf.nn.relu),
    layers.Dropout(0.2),
    layers.Dense(1,kernel_initializer='normal',activation='sigmoid')
  ])
  optimizer = tf.keras.optimizers.RMSprop(lr=lr_val, rho=momentum_val, decay=decay_val) #many other options for optmizer
  model.compile(loss='mean_squared_error',
                optimizer=optimizer,
                metrics=['mean_absolute_error', 'mean_squared_error']) #When dealing with classification, 'accuracy' is very useful as well
  return model

model = build_model()
model.summary()

#Take 10 samples from training dataset for quick test
example_batch = normed_train_data[:10]
example_result = model.predict(example_batch)
example_result

# The patience parameter is the amount of epochs to check for improvement
early_stop = keras.callbacks.EarlyStopping(monitor='val_loss', min_delta=0.001, patience=100, mode='auto', baseline=None, restore_best_weights=True)

EPOCHS = 5000

history = model.fit(
  normed_train_data, train_labels,
  epochs=EPOCHS, 
  validation_split=0.1,
  shuffle=True, verbose=2,
  callbacks=[early_stop])

#Plot the progress of the training
hist = pd.DataFrame(history.history)
hist['epoch'] = history.epoch
hist.tail()

def plot_history(history):
  hist = pd.DataFrame(history.history)
  hist['epoch'] = history.epoch
  plt.figure()
  plt.xlabel('Epoch')
  plt.ylabel('Mean Abs Error [Mean Conc. N]')
  plt.plot(hist['epoch'], hist['mean_absolute_error'],
           label='Train Error')
  plt.plot(hist['epoch'], hist['val_mean_absolute_error'],
           label = 'Val Error')
  #plt.ylim([0,1])
  plt.legend()
  plt.savefig(path_to_save + '/mean_asb_error_lr' + str(lr_val) + '_moment' + str(momentum_val) +  '.png', bbox_inches='tight')
  plt.figure()
  plt.xlabel('Epoch')
  plt.ylabel('Mean Square Error [$(Mean Conc.)^2$]')
  plt.plot(hist['epoch'], hist['mean_squared_error'],
           label='Train Error')
  plt.plot(hist['epoch'], hist['val_mean_squared_error'],
           label = 'Val Error')
  #plt.ylim([0,3])
  plt.legend()
  plt.savefig(path_to_save + '/mean_sq_error_lr' + str(lr_val) + '_moment' + str(momentum_val) +  '.png', bbox_inches='tight')
  # plt.show()

plot_history(history)

#Time for a real test
f, (ax1,ax2) = plt.subplots(1,2, sharey=True)
test_predictions = model.predict(normed_test_data).flatten()
r = r2_score(test_labels, test_predictions)
ax1.scatter(test_labels, test_predictions,alpha=0.5, label='$R^2$ = %.3f' % (r))
ax1.legend(loc="upper left")
ax1.set_xlabel('True Values [Mean Conc.]')
ax1.set_ylabel('Predictions [Mean Conc.]')
ax1.axis('equal')
ax1.axis('square')
ax1.set_xlim([0,1])
ax1.set_ylim([0,1])
_ = ax1.plot([-100, 100], [-100, 100], 'r:')
ax1.set_title('Test dataset')
f.set_figheight(30)
f.set_figwidth(10)
#plt.show()
#plt.close('all')

#Whole dataset
dataset_labels = dataset.pop('bcmean')
normed_dataset = dataset
dataset_predictions = model.predict(normed_dataset).flatten()
r = r2_score(dataset_labels, dataset_predictions)
ax2.scatter(dataset_labels, dataset_predictions, alpha=0.5, label='$R^2$ = %.3f' % (r))
ax2.legend(loc="upper left")
ax2.set_xlabel('True Values [Mean Conc.]')
ax2.set_ylabel('Predictions [Mean Conc.]')
ax2.axis('equal')
ax2.axis('square')
ax2.set_xlim([0,1])
ax2.set_ylim([0,1])
_ = ax2.plot([-100, 100], [-100, 100], 'r:')
ax2.set_title('Whole dataset')
# plt.show()
plt.savefig(path_to_save + '/R_scaled_lr' + str(lr_val) + '_moment' + str(momentum_val) +  '.png', bbox_inches='tight')
#plt.close('all')

#Undo scale step
normed_test_data['bcmean'] = test_predictions
inverse_data = sc.inverse_transform(normed_test_data)
inverse_data = pd.DataFrame(inverse_data, columns = dataset_orig2.columns)
test_predictions = inverse_data.pop('bcmean')
test_labels = test_dataset_orig.pop('bcmean')
f, (ax1,ax2) = plt.subplots(1,2, sharey=True)
r = r2_score(test_labels, test_predictions)
ax1.scatter(test_labels, test_predictions, alpha=0.5, label='$R^2$ = %.3f' % (r))
ax1.legend(loc="upper left")
ax1.set_xlabel('True Values [Mean Conc.]')
ax1.set_ylabel('Predictions [Mean Conc.]')
ax1.axis('equal')
ax1.axis('square')
ax1.set_xlim([-3,3])
ax1.set_ylim([-3,3])
_ = ax1.plot([-100, 100], [-100, 100], 'r:')
ax1.set_title('Test dataset')
f.set_figheight(30)
f.set_figwidth(10)
#plt.show()

#Whole dataset
normed_dataset['bcmean'] = dataset_predictions
inverse_data = sc.inverse_transform(normed_dataset)
inverse_data = pd.DataFrame(inverse_data, columns = dataset_orig2.columns)
dataset_predictions = inverse_data.pop('bcmean')
dataset_labels = dataset_orig2.pop('bcmean')
r = r2_score(dataset_labels, dataset_predictions)
ax2.scatter(dataset_labels, dataset_predictions, alpha=0.5, label='$R^2$ = %.3f' % (r))
ax2.legend(loc="upper left")
ax2.set_xlabel('True Values [Mean Conc.]')
ax2.set_ylabel('Predictions [Mean Conc.]')
ax2.axis('equal')
ax2.axis('square')
ax2.set_xlim([-3,3])
ax2.set_ylim([-3,3])
_ = ax2.plot([-100, 100], [-100, 100], 'r:')
ax2.set_title('Whole dataset')
# plt.show()
plt.savefig(path_to_save + '/R_unscaled_lr' + str(lr_val) + '_moment' + str(momentum_val) +  '.png', bbox_inches='tight')
del model
";i:1;s:7:"python|";i:2;s:25:"ANN_Regression_RMSprop.py";}i:2;i:13268;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13268;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:"Similarly, we check the performance by evaluating the evolution of the error rate and correlation:";}i:2;i:22841;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:22939;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:22939;}i:58;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:49:":wiki:mean_sq_error_lr0.001_moment0.9_rmsprop.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:22941;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:22997;}i:60;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:46:":wiki:r_unscaled_lr0.001_moment0.9_rmsprop.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:22998;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:23051;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:23051;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"Next, we are gonna experiment with the state-of-the-art optimizer: ";}i:2;i:23053;}i:64;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:37:"https://arxiv.org/pdf/1412.6980v8.pdf";i:1;s:5:" ADAM";}i:2;i:23120;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:23168;}i:66;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:23169;}i:2;i:5;i:3;s:3:"  
";}i:2;i:23169;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:23172;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:23178;}i:69;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:11661:"
from __future__ import absolute_import, division, print_function
import pathlib
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.metrics import r2_score
from sklearn.preprocessing import MinMaxScaler
import seaborn as sns
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.models import model_from_json
from sklearn.neighbors import KNeighborsRegressor
import numpy as np
import os 
print(tf.__version__)

root_NN = '/home/user/ost4sem/exercise/machine_learning/NN/'
root_ML = '/home/user/ost4sem/exercise/machine_learning/'
os.chdir(root_NN)
dirName = 'ADAM'
try:
    # Create target Directory
    os.mkdir(dirName)
    print("Directory " , dirName ,  " Created ") 
except FileExistsError:
    print("Directory " , dirName ,  " already exists")

path_to_save = root_NN + dirName

# lr_range=[0.01, 0.05, 0.001, 0.005, 0.0001, 0.0005]
# momentum_range = [0.95, 0.9, 0.85] #in this case, momentum=beta_1
beta_2 = 0.999
# amsgrad_range = ['False', 'True']
decay_val = 1e-6
SMOTE_K = 10
param_val=500
lr_val=0.0005 # in lr_range:
amsgrad_val='True' #in amsgrad_range:
momentum_val=0.9 # in momentum_range:
run_val=1

def smote(X, y, n, k):
	knn = KNeighborsRegressor(k, 'distance').fit(X, y)
	# choose random neighbors of random points
	ix = np.random.choice(len(X), n)
	nn = knn.kneighbors(X.iloc[ix], return_distance=False)
	newY = knn.predict(X.iloc[ix])
	nni = np.random.choice(k, n)
	ix2 = np.array([n[i] for n, i in zip(nn, nni)])
	# synthetically generate mid-point between each point and a neighbor
	#dif = X.iloc[ix] - X.iloc[ix2]
	dif = X.iloc[ix].as_matrix() - X.iloc[ix2].as_matrix()
	gap = np.random.rand(n, 1)
	newX = X.iloc[ix] + dif*gap
	return np.r_[X, newX], np.r_[y, newY]

# for param_val in param:
	# for run_val in range(1,4):
plt.close('all')
dataset = pd.read_csv(root_ML + "US_TN_season_1_proc.csv")	
dataset.tail()

#Check for NaN in this table and drop them if there are
dataset.isna().sum()
dataset.dropna()

#Split the dataset into a training set and a test set.
dataset_orig = dataset #keep a backup of the original dataset. Might be useful.

# Remove extra variables from the dataset (keep just the 47 predictors and the 'bcmean' (what we are predicting)
dataset = dataset.drop(["RVunif_bc","mean","std","cv","longitude","latitude","RVunif"],axis=1)
dataset_orig2 = dataset
dataset.to_csv('dataset_clean.csv',index=False) #Saving the csv file just for easier visualization of the raw data

# Rescale: differences in scales accross input variables may increase the difficulty of the problem being modeled and results on unstable weights for connections
sc = MinMaxScaler(feature_range = (0,1)) #Scaling features to a range between 0 and 1

# Scaling and translating each feature to our chosen range
dataset = sc.fit_transform(dataset) 
dataset = pd.DataFrame(dataset, columns = dataset_orig2.columns)
dataset_scaled = dataset #Just backup
inverse_data = sc.inverse_transform(dataset) #just to make sure it works

train_dataset = dataset.sample(frac=0.5,random_state=0)
test_dataset = dataset.drop(train_dataset.index)
train_dataset_orig = dataset_orig2.sample(frac=0.5,random_state=0) #just backup
test_dataset_orig =  dataset_orig2.drop(train_dataset_orig.index) #just backup

#Inspect the original mean (still missing some formatting)
sns.set()
f, (ax1,ax2) = plt.subplots(2, 1,sharex=True)
sns.distplot(train_dataset["bcmean"],hist=True,kde=False,bins=75,color='darkblue',  ax=ax1, axlabel=False)
sns.kdeplot(train_dataset["bcmean"],bw=0.15,legend=True,color='darkblue', ax=ax2)

ax1.set_title('Original  histogram')
ax1.legend(['bcmean'])
ax2.set_title('KDE')
ax2.set_xlabel('Mean Concentration N')
ax1.set_ylabel('Count')
ax2.set_ylabel('Dist')
# plt.show()

#Check the overall stats
train_stats = train_dataset.describe()
train_stats.pop('bcmean') #because that is what we are trying to predict
train_stats = train_stats.transpose()
train_stats #now train_stats has 47 predictors (as described in the paper).

# Remove the output from our list of predictors
train_dataset.to_csv('train_dataset.csv',index=False) 
train_labels = train_dataset.pop('bcmean')
test_dataset.to_csv('test_dataset.csv',index=False)
test_labels = test_dataset.pop('bcmean')


# Inspect the joint distribution of a few pairs of columns from the training set
# We can observe that the process of scalling the data did not affect the skewness of the data
#sns.pairplot(train_dataset[["lc09", "lc07", "hydro05", "hydro07","soil01","dem"]], diag_kind="kde")
## plt.show()

#Normalize the data because the data has very different ranges (not really crucial for the prediction to use the raw data)
#def norm(x):
# return (x - train_stats['mean']) / train_stats['std']
normed_train_data = train_dataset #norm(train_dataset)
normed_test_data = test_dataset #norm(test_dataset)

# Build the model. 'Sequential' model with two densely connected hidden layers,and an output layer that returns a single, continous value
# The architecture can be freely modified (pretty much whatever works better for your data)
def build_model():
  model = keras.Sequential([
    layers.Dense(128,kernel_initializer='normal',activation='relu',input_shape=[len(train_dataset.keys())]),
    layers.Dropout(0.2),
    layers.Dense(256, activation='relu'),
    layers.Dropout(0.2),
    layers.Dense(256, activation='relu'),
    layers.Dropout(0.2),
    layers.Dense(256, activation='relu'),
    layers.Dropout(0.2),
    layers.Dense(1,kernel_initializer='normal',activation='linear')
  ])
  optimizer = tf.keras.optimizers.Adam(lr=lr_val, beta_1=momentum_val, beta_2 = beta_2, decay=decay_val, amsgrad=amsgrad_val) #many other options for optmizer
  model.compile(loss='mean_squared_error',
                optimizer=optimizer,
                metrics=['mean_absolute_error', 'mean_squared_error']) #When dealing with classification, 'accuracy' is very useful as well
  return model

EPOCHS = 5000

#Augment the data
_Xtr, _ytr = smote(normed_train_data, train_labels, param_val, SMOTE_K)

#Export Xtr and ytr to a csv file for future inspection
aug_train = pd.DataFrame(_Xtr, columns = normed_train_data.columns)
aug_train['bcmean'] = _ytr
# aug_train.to_csv('aug_train.csv',index=False) #Saving the csv file just for easier visualization of the raw data

#Just to show everything is still same proportion
# sns.pairplot(aug_train[["lc09", "lc07", "hydro05", "hydro07","soil01","dem"]], diag_kind="kde")
# plt.show()
train_labels = aug_train.pop('bcmean')
normed_train_data = aug_train

model = build_model()
model.summary()

# checkpoint_name = 'Weights-{epoch:03d}--{val_loss:.5f}.hdf5' 
# checkpoint = keras.callbacks.ModelCheckpoint(checkpoint_name, monitor='val_loss', verbose = 1, save_best_only = True, mode ='auto')

#Take 10 samples from training dataset for quick test
example_batch = normed_train_data[:10]
example_result = model.predict(example_batch)
example_result

# The patience parameter is the amount of epochs to check for improvement
early_stop = keras.callbacks.EarlyStopping(monitor='val_loss', min_delta=0.001, patience=100, mode='auto', baseline=None, restore_best_weights=True)

history = model.fit(
  normed_train_data, train_labels,
  epochs=EPOCHS, 
  validation_split=0.2,
  shuffle=True, verbose=2,
  callbacks=[early_stop]) #, checkpoint])

#Plot the progress of the training
hist = pd.DataFrame(history.history)
hist['epoch'] = history.epoch
hist.tail()

def plot_history(history):
  hist = pd.DataFrame(history.history)
  hist['epoch'] = history.epoch
  plt.figure()
  plt.xlabel('Epoch')
  plt.ylabel('Mean Abs Error [Mean Conc. N]')
  plt.plot(hist['epoch'], hist['mean_absolute_error'],
           label='Train Error')
  plt.plot(hist['epoch'], hist['val_mean_absolute_error'],
           label = 'Val Error')
  #plt.ylim([0,1])
  plt.legend()
  plt.savefig(path_to_save + '/mean_asb_error_lr' + str(lr_val) + '_moment' + str(momentum_val) + '_amsgrad' + str(amsgrad_val) + '_param' + str(param_val) + '_run' + str(run_val) + '.png', bbox_inches='tight')
  plt.figure()
  plt.xlabel('Epoch')
  plt.ylabel('Mean Square Error [$(Mean Conc.)^2$]')
  plt.plot(hist['epoch'], hist['mean_squared_error'],
           label='Train Error')
  plt.plot(hist['epoch'], hist['val_mean_squared_error'],
           label = 'Val Error')
  #plt.ylim([0,3])
  plt.legend()
  plt.savefig(path_to_save + '/mean_sq_error_lr' + str(lr_val) + '_moment' + str(momentum_val) + '_amsgrad' + str(amsgrad_val) + '_param' + str(param_val) + '_run' + str(run_val) + '.png', bbox_inches='tight')
  # plt.show()

plot_history(history)

#Time for a real test
f, (ax1,ax2) = plt.subplots(1,2, sharey=True)
test_predictions = model.predict(normed_test_data).flatten()
r = r2_score(test_labels, test_predictions)
ax1.scatter(test_labels, test_predictions,alpha=0.5, label='$R^2$ = %.3f' % (r))
ax1.legend(loc="upper left")
ax1.set_xlabel('True Values [Mean Conc.]')
ax1.set_ylabel('Predictions [Mean Conc.]')
ax1.axis('equal')
ax1.axis('square')
ax1.set_xlim([0,1])
ax1.set_ylim([0,1])
_ = ax1.plot([-100, 100], [-100, 100], 'r:')
ax1.set_title('Test dataset')
f.set_figheight(30)
f.set_figwidth(10)
#plt.show()
#plt.close('all')

#Whole dataset
dataset_labels = dataset.pop('bcmean')
normed_dataset = dataset
dataset_predictions = model.predict(normed_dataset).flatten()
r = r2_score(dataset_labels, dataset_predictions)
ax2.scatter(dataset_labels, dataset_predictions, alpha=0.5, label='$R^2$ = %.3f' % (r))
ax2.legend(loc="upper left")
ax2.set_xlabel('True Values [Mean Conc.]')
ax2.set_ylabel('Predictions [Mean Conc.]')
ax2.axis('equal')
ax2.axis('square')
ax2.set_xlim([0,1])
ax2.set_ylim([0,1])
_ = ax2.plot([-100, 100], [-100, 100], 'r:')
ax2.set_title('Whole dataset')
# plt.show()
plt.savefig(path_to_save + '/R_scaled_lr' + str(lr_val) + '_moment' + str(momentum_val) + '_amsgrad' + str(amsgrad_val) + '_param' + str(param_val) + '_run' + str(run_val) + '.png', bbox_inches='tight')
#plt.close('all')

#Undo scale step
normed_test_data['bcmean'] = test_predictions
inverse_data = sc.inverse_transform(normed_test_data)
inverse_data = pd.DataFrame(inverse_data, columns = dataset_orig2.columns)
test_predictions = inverse_data.pop('bcmean')
test_labels = test_dataset_orig.pop('bcmean')
f, (ax1,ax2) = plt.subplots(1,2, sharey=True)
r = r2_score(test_labels, test_predictions)
ax1.scatter(test_labels, test_predictions, alpha=0.5, label='$R^2$ = %.3f' % (r))
ax1.legend(loc="upper left")
ax1.set_xlabel('True Values [Mean Conc.]')
ax1.set_ylabel('Predictions [Mean Conc.]')
ax1.axis('equal')
ax1.axis('square')
ax1.set_xlim([-3,3])
ax1.set_ylim([-3,3])
_ = ax1.plot([-100, 100], [-100, 100], 'r:')
ax1.set_title('Test dataset')
f.set_figheight(30)
f.set_figwidth(10)
#plt.show()

#Whole dataset
normed_dataset['bcmean'] = dataset_predictions
inverse_data = sc.inverse_transform(normed_dataset)
inverse_data = pd.DataFrame(inverse_data, columns = dataset_orig2.columns)
dataset_predictions = inverse_data.pop('bcmean')
dataset_labels = dataset_orig2.pop('bcmean')
r = r2_score(dataset_labels, dataset_predictions)
ax2.scatter(dataset_labels, dataset_predictions, alpha=0.5, label='$R^2$ = %.3f' % (r))
ax2.legend(loc="upper left")
ax2.set_xlabel('True Values [Mean Conc.]')
ax2.set_ylabel('Predictions [Mean Conc.]')
ax2.axis('equal')
ax2.axis('square')
ax2.set_xlim([-3,3])
ax2.set_ylim([-3,3])
_ = ax2.plot([-100, 100], [-100, 100], 'r:')
ax2.set_title('Whole dataset')
# plt.show()
plt.savefig(path_to_save + '/R_unscaled_lr' + str(lr_val) + '_moment' + str(momentum_val) + '_amsgrad' + str(amsgrad_val) + '_param' + str(param_val) + '_run' + str(run_val) + '.png', bbox_inches='tight')
del model
";i:1;s:7:"python|";i:2;s:22:"ANN_Regression_ADAM.py";}i:2;i:23178;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:23178;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"And here is the performance obtained for this trained model:";}i:2;i:34880;}i:72;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:34940;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:34940;}i:74;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:68:":wiki:mean_sq_error_lr0.0005_moment0.9_amsgradtrue_param500_run1.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:34942;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:35017;}i:76;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:65:":wiki:r_unscaled_lr0.0005_moment0.9_amsgradtrue_param500_run1.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:35018;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:35090;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:35090;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:202:"Of course, a single run for each architecture cannot be used as a base to decide which model should be used. The right way to decide if an architecture works for you is by running several interactions. ";}i:2;i:35092;}i:80;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:100:"https://docs.google.com/spreadsheets/d/1BplSg2JYJdztWDC7Zj4bufcEdZsuQBnJT62N0-MDm8g/edit?usp=sharing";i:1;s:5:" Here";}i:2;i:35294;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:105:" is an example of performance comparison for all the architectures we checked in this tutorial and more. ";}i:2;i:35405;}i:82;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:35510;}i:83;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:35510;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:227:"The code is clearly very dense to be absorbed all at once, so take your time to go back on the code and run it line by line. Also, take some time to appreciate the literature and understand the influence of the hyperparameters.";}i:2;i:35512;}i:85;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:35739;}i:86;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:35739;}i:87;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:35739;}}