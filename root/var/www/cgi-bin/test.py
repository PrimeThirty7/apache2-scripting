#!/usr/bin/python3
#
# Script to print out basic web page with a loop.
#
print ("Content-type: text/html\n")
print ("<html><head><title>Python Test</title></head><body>")
print ("<H1>Hello World from Python</H1>")
    
count = 1
while (count < 38):
   print ('The number is now:', count, "<br />")
   count = count + 1
print ("<hr>PrimeThirty7 should do it !")
print ("</body></html>")
exit ()

