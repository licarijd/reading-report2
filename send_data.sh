rm api_call*
c=`head -c 800 pdf_text.txt | sed 's/[^a-zA-Z.," "]*//g'`
echo "curl -H 'X-ApiKey: b82653371f0095b43c8ee6a5c7248307' 'https://apiv2.indico.io/sentiment' --data '{" > api_call.sh
cat q >> api_call.sh 
echo "data" >> api_call.sh
cat q >> api_call.sh 
echo ": " >> api_call.sh
cat q >> api_call.sh 
echo $c >> api_call.sh
cat q >> api_call.sh 
echo "}'" >> api_call.sh
tr -d '\n' < api_call.sh > api_call_parsed.sh
sh api_call_parsed.sh > result.txt
echo "" > resultsFinal.txt
cat result.txt | sed 's/[^1-9.]*//g' >> resultsFinal.txt
python gui.py
