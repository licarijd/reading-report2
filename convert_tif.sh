num_pages="20"
echo "start"

#n="2"
#while [ $n -lt $num_pages ]
#do

#write the text in the image to a file
tesseract -l eng some-$num_pages.tif output-$num_pages

#n=$[$n+1]
#done

sh append_and_rate.sh
