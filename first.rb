#!/usr/bin/ruby
print "Hello World"

print "\n"
print "="*100
print "\n"
for i in 1..10
	print i,"\n";
end

print "\n"
print "="*100
print "\n"


crubod = ["Yoku", "Amit" , "Gurjeet" , "Srishty"]
for emp in 0...crubod.length
	print emp, ":", crubod[emp], "\n";
end

print "\n"
print "="*100
print "\n"


crubod = ["Yoku", "Amit" , "Gurjeet" , "Srishty"]
for emp in 0...crubod.length
	print emp, ":", crubod[crubod.length- emp - 1], "\n";
end

print "\n"
print "="*100
print "\n"

crubod = ["Yoku", "Amit" , "Gurjeet" , "Srishty"]
for emp in 0...crubod.length
	print emp, ":", crubod[- emp - 1], "\n";
end

print "\n"
print "="*100
print "\n"



crubod = ["Yoku", "Amit" , "Gurjeet" , "Srishty"]
print "Printing using Iterator and Blocks\n"
crubod.each {
	   |i| 
	   puts i

	}

print "\n"
print "="*100
print "\n"



crubod = ["Yoku", "Amit" , "Gurjeet" , "Srishty"]
print "Printing using Iterator and Blocks using do and end\n"
crubod.each do
	   |i| 
	   puts i

	end

print "\n"
print "="*100
print "\n"

j = -99
puts "Before: " + j.to_s
(1..10).each{|j| puts j}
puts "After : " + j.to_s


print "\n"
print "="*100
print "\n"


puts crubod.collect{

	|k|
	k.capitalize
}
puts "*****"

crubod.collect do
		|l|
		l.capitalize


end
puts crubod

print "\n"
print "="*100
print "\n"

kd = 4
while kd>0
	puts kd
	kd-=1
end

puts "********"

while kd<5
	puts kd
	kd +=1
	break if kd>3
end

puts "********"


kd=5
while kd>0
	puts kd
	kd -= 2
	if kd == 1
		kd	+=5
	end
end		


print "\n"
print "="*100
print "\n"

democrats = ["Carter", "Clinton"]
republicans = ["Ford", "Reagan", "Bush1", "Bush2"]
party = ARGV[0]
if party == nil 
	print "Argument must be \"democrats\" or \"republicans\"\n"
elsif party == "democrats"
	democrats.each { |i| print i, " "}
	print "\n"
elsif party == "republicans"
	republicans.each { |i| print i, " "}
	print "\n"
else
	print "All presidents since 1976 were either Democrats or Republicans\n"
end

print "\n"
print "="*100
print "\n"

crubod = ["Srishty", "Gurjeet"]
eTouch = ["Yogesh", "Amit", "Preeti", "Ankit"]
party = ARGV[0]
if party != nil
	crubod.each { |i| puts i, " "} if party == "crubod"
	eTouch.each { |i| print i, " "} if party == "eTouch"
	print "All employees since 1976 were either from crubod or eTouch\n"\
		if (party != "crubod" && party != "eTouch") 
end

print "\n"
print "="*100
print "\n"

presidents = ["Ford", "Carter", "Reagan", "Bush1", "Clinton", "Bush2"]

i=1
while i<4
	presidents.pop
    i+=1
end
presidents.each { |i| print i, "\n"}
j=1


print "\n"
print "="*100
print "\n"

presidents.unshift("Amit")
presidents.each { |i| print i, "\n"}

print "\n"
print "="*100
print "\n"

presidents = ["Ford", "Carter", "Reagan", "Bush1", "Clinton", "Bush2", "nil"]
p123 = presidents[1..3]
puts presidents.length
puts p123.length
p123.each {|i| print i, "\n"}


print "\n"
print "="*100
print "\n"


numbers = Array.new
numbers[3] = "three"
numbers[4] = nil
print "Class=", numbers.class, "\n"
print "Length=", numbers.length, "\n"
numbers.each { |i| print i, "\n"}

print "\n"
print "="*100
print "\n"
