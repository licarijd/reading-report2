#import json
#with open ("pdf_text.txt", "r") as myfile:
#    data=myfile.readlines()
#d = json.loads(data)
#curl -H 'X-ApiKey: b82653371f0095b43c8ee6a5c7248307' 'https://apiv2.indico.io/sentiment' --data '{"data": data}'

#curl -H 'X-ApiKey: b82653371f0095b43c8ee6a5c7248307' 'https://apiv2.indico.io/sentiment' --data '{"data": "indico is so easy to use!"}'

import indicoio
indicoio.config.api_key = 'b82653371f0095b43c8ee6a5c7248307'

# single example
indicoio.sentiment("I love writing code!")

# batch example
indicoio.sentiment([
    "I love writing code!",
    "Alexander and the Terrible, Horrible, No Good, Very Bad Day"
])
