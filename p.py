import os, urllib, sys
filename = 'https://www.google.ca/search?q=hi&tbm=nws' + urllib.urlencode({'q': ' '.join(sys.argv[1:]) })
cmd = os.popen("lynx -dump %s" % filename)
output = cmd.read()
cmd.close()
print output
