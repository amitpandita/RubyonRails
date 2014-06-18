#!/usr/bin/ruby
myname = "Amit Pandit"
myname_copy = myname
print "myname      = ", myname, "\n"
print "myname_copy = ", myname_copy, "\n"
print "\n=========================\n"
myname << "a"
print "myname      = ", myname, "\n"
print "myname_copy = ", myname_copy, "\n"

print "\n"
print "="*100
print "\n"

myname = "Guest"
myname_copy = String.new(myname)
print "myname      = ", myname, "\n"
print "myname_copy = ", myname_copy, "\n"
print "\n=========================\n"
myname << "123"
print "myname      = ", myname, "\n"
print "myname_copy = ", myname_copy, "\n"

