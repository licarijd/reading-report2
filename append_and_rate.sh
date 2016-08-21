n="2"
num_pages="20"

#while [ $n -lt $num_pages ]
#do

#append the file
cat output-$num_pages.txt > pdf_text.txt

#n=$[$n+1]
#done

#append the file
#output-$i.txt >> pdf_text.txt

#curl -H 'X-ApiKey: b82653371f0095b43c8ee6a5c7248307' 'https://apiv2.indico.io/$

#c=`cat test.txt`
#echo $c
#curl -H 'X-ApiKey: b82653371f0095b43c8ee6a5c7248307' 'https://apiv2.indico.io/sentiment' --data "{'data':$c}"
#echo "{'data':$c}"

sh send_data.sh


