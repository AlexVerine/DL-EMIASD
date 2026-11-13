#!/bin/bash

 scp lamsade:'DeepLearningIASD/figures/*.pdf' .
 scp lamsade:'DeepLearningIASD/figures/*.png' .
 FILES="*.pdf"

for f in $FILES
do 
	echo "$f"
	pdfcrop $f $f	
done
