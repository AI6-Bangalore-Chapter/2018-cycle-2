# AI6 : Session 13
-----

## Morning Session
-----


## RoadMap to re-implementing the fastai lesson 8.
	- intented blocks are specific for this lesson.
    - Motto --> Localise and Classify the Largest Object in each image.



 1. load the data using pathlib (or, any other library)

 2. Convert the data into a python container or pandas dataframe.  
	a. from json to dictionaries.

3. Make constants for easy accessability and preprocess the data.  
	a. making a csv file that can be fed into the ImageClassifierData

4. Define fuctions for displaying the given image.  
	a. show_image - returning ax.  
	b. bb_hw - Swaping the coordinates for convenience.  
	c. draw_outline - Drawing the bounding box, using patheffects.  
	d. draw_rectangle - Drawing the rectangle patches, using patches. 
	c. draw_text - writing the annotaion class on the image.  
    
5. Largest Item Classifier.  
    a. get the largest bounding box.  
    b. make a custom csv file to fed it into our model.  

5. fastai routine for model fitting.  
	a. donot crop during augmentations.  
	b. make two different dataloaders for predicting bounding box and class.  
	c. don't forget to specify the regression/classification parameter.  

6. Making a custom dataset, merging the above data loaders.  
	a. refer ConcatLblDataset.  
	b. make this as your md.  

7. Add a custom head at the end of your convnet model.  
	a. hint: relu--Dropout--Linear--relu--batchnorm--drpout--linear  

8. Define your learner and its optimizer.  
	a. learn.opt_fn  

9. Defining custom LOSS funCTION, learn.crit, learn.metrics.
	a. L1 loss + Cross Entropy Loss = F.l1_loss(bb_i, bb_t) + F.cross_entropy(c_i, c_t)*k
	b.

10. The BEST PART, learn.fit
	a. adjust use_clr.
 
#### [ref](https://forums.fast.ai/t/deeplearning-lec9-notes/14113?u=cedric)
[Receptive Field](https://youtu.be/0frKXR-2PBY?t=2251)

## Afternon Session

-----
#### Resources
###### [Yolo V2 ++](https://arxiv.org/abs/1612.08242)

###### [SSD](https://arxiv.org/abs/1512.02325)

###### [Lesson Notes](https://forums.fast.ai/t/part-2-lesson-9-wiki/14028)
