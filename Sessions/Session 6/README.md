# Week 6 (Fast.ai Week 3) [and here's the medium blog on what happened this week](https://medium.com/ai-saturdays/ai-saturdays-bangalore-chapter-everything-about-convolutions-week-6-390b694bf210)

## Video Summary:
##### 0:00 - Blogs and articles by fast.ai fellows:
- 0:37 - How to setup amazon instance
- 1:22 - Using tmux
- 2:10 - Summary of fast.ai week 2
- 2:38 - Learning rate finder
- 3:15 - Practioners guide to pytorch
- 3:38 - Relationship between Learning rate & batch size
- 4:00 - explaining SGD
- 4:28 - Intro to CNNs
- 4:30 - Ddecoding resNet

##### 5:48 - Fast.ai course overview
![](https://www.zerotosingularity.com/img/fast-ai-part-1-lesson-1-annotated-notes/fast-ai-part-1-course-structure.png)

##### 8:23 - Kaggle : Understanding the Amazon from space 
- 9:00 - How to download data 
  - 10:20 - reshmas github for intro on using kaggle-cli
  - 10:43 - how to get the name of the competiton to be used in kaggle-cli
  - 12:20 - CurlWget extension
- 13:45 - Handling downloaded data
  - 14:10 - Using symbolic links
- 15:10 - Starting with the code
  - 20:15 - Cats v/s Dogs in keras
  - 32:45 - Submitting to kaggle
  - 39:30 - Prediction for single file 
  - 1:30:10 - one hot encoding
  - 1:38:50 - data.resize
  - 1:41:15 - metrics 
  - 1:44:40 - Activation function for multilabel classification

##### 42:00 - Understanding Convolutions(show block diagram)
  - 42:00 - Video
  - 49:50 - Convolution Spreadsheet
    - 49:50 - Explaining convolution in spread/excel sheet
    - 1:05:26 - What will be the filter size if input is multi-channel
  - 1:10:43 - Softmax
    - 1:10:43 - What is activation function and why do we need it.
    - 1:14:10 - Softmax
##### 1:59:45 - ROSMAN : Structured data

--- 

## Today's agenda:

### By 4PM today, you will have a grip* on these concepts
- #### Deep Convolution networks (Inside-out)
- #### Kaggle : Attempt an kaggle problem with an interesting dataset

---

#### How does an computer understand an image
![](https://cdn-images-1.medium.com/max/1600/1*ccVO7341XIh7GfvzQS1IGw.png)

### The Big picture : a convolutions network
[Link to video](https://youtu.be/Oqm9vsf_hvU?t=266)

#### This is a 1 convolution layer
![](https://github.com/vdumoulin/conv_arithmetic/raw/master/gif/no_padding_no_strides.gif)

#### Filter/Kernel in action
[Image Kernels explained visually](http://setosa.io/ev/image-kernels/)
##### NOTE : weights in the filter are the result of training.

<br />

##### Convolution network = a stack of convolutions layers
And if this set is big one, it's **Deep Convolution networks**, the deep learning part counterpart of convolution network. Eg: RESNET.

#### Excelsheet example of convolutions
[Link to excel sheet](https://docs.google.com/spreadsheets/d/1rXJ_tmMAePh07nBdMBc18kfaANP02vL0E9ii-kSRsnA/)


## Convloutions in-depth: We'll look at a single convolution in action. Combinations of various of these convolutions results in various architectures.

> ### Convolutions in-detail: 

- #### strides & Padding
  - ##### Strides concept : 
    ![](https://github.com/vdumoulin/conv_arithmetic/raw/master/gif/no_padding_strides.gif)
    - Why?
      - Choosing based on the sparsity of information on the input
  - ##### Padding concept:
    ![](https://github.com/vdumoulin/conv_arithmetic/raw/master/gif/same_padding_no_strides.gif)
    - Why:
      - Without padding, reduction in size would converge the network quickly and network might not get deep enough.
      - doesnt discard information at the borders
- #### Channels
  - What are channels
    ![](http://xrds.acm.org/blog/wp-content/uploads/2016/06/Figure1.png)
  - example RGB, medical, satellite, etc
- #### Kernel/filter 
  ![](https://i.stack.imgur.com/9Iu89.gif)
  - DIFF b/w parameters and hyper-parameters
- #### Feature maps : 
  - what
  - how to calculate the no. of feature maps produced : no. of filters
  - Dimension of produced feature maps ; (N+2P-F)/S + 1 
- #### No. of filters/kernels 
  - dimensions we consider of the filter.
- #### Activations : sigmoid, tanh, relu, leaky relu, elu 
![](https://cdn-images-1.medium.com/max/1600/1*DRKBmIlr7JowhSbqL6wngg.png)
  - what
  - why
  - their adv and disadv and 
  - when to use what.
- #### Pooling layers : Maxpool, avgpool, minpool
![](http://cs231n.github.io/assets/cnn/maxpool.jpeg)
  - what
  - why
  - adv and disadv
  - when to use what : In classifying cats vs. dogs, averaging over the image tells us "how doggy or catty is this image overall." Since a large part of these images are all dogs and cats, this would make sense. If you were using max pooling, you are simply finding "the most doggy or catty" part of the image, which probably isn't as useful. However, this may be useful in something like the fisheries competition, where the fish occupy only a small part of the picture.

> ### Combining CNNs and FCNNs to do what we do : example of a deep CNN:
![](https://github.com/AI6-Bangalore-Chapter/2018-cycle-2/blob/master/Sessions/Session_6/pretrained.png)
- What
- why

> ### what is ResNet and how is it different from a general deep CNN?
![](https://cdn-images-1.medium.com/max/800/1*zS2ChIMwAqC5DQbL5yD9iQ.png)      

## Kaggle : ([Link for today's notebook](https://www.kaggle.com/suraj2596/ai6-blore-w6-fast-ai-lesson-3))
- Planet competition
  - We don't use softmax coz it's multilabel classification
  - Fastai lib will look at csv and switch into multilabel mode. (we dont have to do any changes)
- [ROSMAN Kaggle](https://www.kaggle.com/hortonhearsafoo/fast-ai-lesson-3)

---

> ### Additional Reading:
- [Understanding ResNet](https://medium.com/@14prakash/understanding-and-implementing-architectures-of-resnet-and-resnext-for-state-of-the-art-image-cf51669e1624)
- [1D, 2D and 3D Convolutions](https://ifding.github.io/2018/05/24/1d-2d-and-3d-convolutions-in-cnn/)
- [CS231n Convolutional Neural Networks for Visual Recognition](http://cs231n.github.io/convolutional-networks/)
- - Book : Pyhon for Data analysis by Wes McKinney
- [fastai lesson notes](http://forums.fast.ai/t/wiki-lesson-3/9401)
- [Convolutional Networks by Andrej Karpathy](http://cs231n.github.io/convolutional-networks/)
--- 

> ### Assignment:
1. Why is the kernel size always odd?
2. What is stochastic pooling

---

