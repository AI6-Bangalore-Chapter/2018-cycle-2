  GNU nano 2.5.3                                                                                                                                                                                                                                                                                                           File: cyod.sh                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            

#!/bin/sh

clear
echo "-------------------------------------------"
echo "[CYOD] CREATE YOUR OWN DATASETS v0.9 (Beta)"
echo "-------------------------------------------\n"

echo "------"
echo "INTRO:"
echo "------"

#echo "Please go through the below instruction carefully before you proceed!"

echo "This is a shell script for downloading datasets in fast.ai dataset format."
echo "If you do not know the fast.ai format of datasets, here it is:\n"
echo "--> dataset(root folder for your dataset)"
echo " |--> train"
echo "   |--> <Train image data goes here>"
echo " |--> test1"
echo "   |--> <Test image data goes here>"
echo " |--> valid"
echo "   |--> <Validation image data goes here>\n"

echo "This is how the dataset is structured by fast.ai"
echo "All you have to do is type the class of dataset and no. of images."
echo "This script does all the work of splitting the dataset and structuring it into fas.ai format.\n"

echo "-------------"
echo "DEPENDENCIES:"
echo "-------------"
echo "Before you proceed, make sure you have 'googleimagesdownload' installed."
echo "If you don't have it, you can isnatll it by running 'pip install google_images_download'.\n"

#echo "For further details on how to use it, refer to this link : \n\n"

echo "-------"
echo "AUTHOR:" 
echo "-------"
echo "https://github.com/suraj2596 \n"

echo "-----"
echo "NOTE:" 
echo "-----"
echo "This script is a friendly CLI built upon : https://github.com/hardikvasa/google-images-download." 
echo "This script can be used for collecting datasets from google which can be used with fast.ai library comfortably.\n"

echo "-----------------------------------------------------------------"

while :
do
        echo "Choose your options:\n"
        echo "1. Download new class/classes of data"
        echo "2. Print the list of existing classes data"
        echo "3. Create a new fastai dataset format (destroys the old one)"
        echo "4. Add classes to the existing fastai dataset"
        echo "5. Exit \n"

        read -p "Your option >> " INPUT

        case $INPUT in
                1)
                        echo "-----------------"
                        read -p "Type the classes of data you want to download by seperating with ',' >> " CLASS
                        read -p "How many images per class do you want to download? (Preferable in multiples of 10) >> " NO
                        echo "-----------------\n"
                        googleimagesdownload --keywords $CLASS --limit $NO
                        ;;

                2)
                        echo "-----------------"
                        ls downloads/
                        echo "-----------------\n"
                        ;;

                3)
                        echo "-----------------"
                        rm -r fastaidataset
                        mkdir -p fastaidataset/test1
                        mkdir -p fastaidataset/train
                        mkdir -p fastaidataset/valid
                        mkdir -p fastaidataset/temp
                        echo "-----------------\n"
                        ;;

                4)
                        echo "-----------------"
                        echo "These are the available classes of data on your local system." 
                        echo "Type which classes you want to add to the dataset"
                        echo "-----------------"
                        ls downloads/
                        echo "-----------------"
                        read -p "Type here with a single spaces between each class of data >> " CLASSES
                        cd downloads
                        cp -r $CLASSES ../fastaidataset/temp
                        ls ../fastaidataset/temp
                        cd ..
                        ten=10
                        tr_s=8
                        val_s=1
                        te_s=1

                        cd fastaidataset/temp/

                        for i in `ls -1tr`
                        do
                                cd $i
                                #mv $i  ../../train/
                                files=$(ls -1|wc -l)
                                t=`expr $files / $ten`
                                #echo $t
                                train=`expr $t \* $tr_s`
                                test=`expr $t \* $te_s`
                                valid=`expr $t \* $val_s`
                                echo $train

                                #mv `ls -1tr | head -$train` ../../train/ --

                                ls -1tr | head -$train | xargs -I{} mv {} ../../train/ --
                                ls -1tr | head -$valid | xargs -I{} mv {} ../../valid/ --
                                ls -1tr | head -$test1 | xargs -I{} mv {} ../../test1/ --

                                cd ..
                        done
                        rm -r *
                        echo "-----------------\n"
                        ;;

                5)
                        echo "Bye\n"
                        break
                        ;;
        esac
done 




























