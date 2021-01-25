#!/bin/bash

T=$(find /home/imageprocessingcourse/ -type f -name "*trainingsvideo.avi*")

/usr/local/bin/python /home/imageprocessingcourse/main.py --file_path $T --output_path ./Output.csv

F=$(find /home/imageprocessingcourse/ -type f -name "*Output.csv*") 

G=$(find /home/imageprocessingcourse/ -type f -name "*groundTruth.csv*")

/usr/local/bin/python /home/imageprocessingcourse/evaluation.py --file_path $F  --ground_truth_path $G

#Comment out lines until here if you dont want docker to evaluate on start.

#Do not ever comment out below line
/bin/bash



