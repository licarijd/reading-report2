import re
import Tkinter
import tkMessageBox
import time
import string

top = Tkinter.Tk()

def helloCallBack():
    with open ("resultsFinal.txt", "r") as myfile:
        data=myfile.readlines()
        data_string="".join(data)
        data_string2=re.sub('[^A-Za-z0-9.]+', '', data_string)
        #all=string.maketrans('','')
        #nodigs=all.translate(all, string.digits)
        #data.translate(all, nodigs)
	float(data_string2)
	#data_string2=data_string2*100
    tkMessageBox.showinfo("This book is " + " " + data_string2[1:3]+ "% positive!", "Mood Me: The Smart Reading Choice for your Mental Health")
#   subprocess.call("rate_pdf.sh", shell=True)

B = Tkinter.Button(top, text ="Calculate Positivity Rating", command = helloCallBack)

B.pack()
top.mainloop()
