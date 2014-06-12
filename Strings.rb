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


print "\n"
print "="*100
print "\n"

class GF  
 def initialize  
  puts 'In GF class'  
 end  
 def gfmethod  
  puts 'GF method call'  
 end  
end  
  
# class F sub-class of GF  
class F < GF  
 def initialize  
  puts 'In F class'  
 end  
end  
  
# class S sub-class of F  
class S < F  
 def initialize  
  puts 'In S class'  
 end  
end  
son = S.new  
son.gfmethod  