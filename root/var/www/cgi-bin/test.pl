#!/usr/bin/perl -w
print "Content-type: text/html\r\n\r\n";
print "<html><head><title>Python Test</title></head><body>";
print "<h1>Hello World from Perl</h1>\n";
for ($i=1; $i<38; $i++)
{
  print "The number is now: ".$i."<br />";
}
print "<hr>PrimeThirty7 should do it !";
print "</body></html>";
