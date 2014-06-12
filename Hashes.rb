#!/usr/bin/ruby
amit = {
		"Mirage_Web" => {"designation" => "SE", "duration" => "10 months", "location" => "Delhi"},
	    "Kelly_Services" => {"designation" => "STD", "duration" => "18 months", "location" => "Saket"}, 
		"Global_Logic" => {"designation" => "SSE", "duration" => "12 months", "location" => "Noida"},
		"eTouch" => {"designation" => "SE", "duration" => "6 months", "location" => "Gurgaon"},

	}

keys = amit.keys

for key in 0...keys.length
	print "Company Name :", keys[key], "\n"
	print  "Designation  :", amit[keys[key]]["designation"]
	print  "Duration  :", amit[keys[key]]["duration"]
	print  "Location  :", amit[keys[key]]["location"]
	print "\n\n"
end 	

print "\n"
print "="*100
print "\n"



h = Hash.new
h['size'] = 'big'
h['color'] = 'red'
h['brand'] = 'ford'

av = h.sort{|a,b| a[1] <=> b[1]}
ak = h.sort{|a,b| a[0] <=> b[0]}
ak.each do
	|pair|
	print pair[0]
	print "=>"
	print pair[1]
	puts
end
puts "=============="
av.each do
	|pair|
	print pair[0]
	print "=>"
	print pair[1]
	puts
end

puts "=============="

emp =  Hash.new

emp['fname'] = 'Yogesh'
emp['mname'] = 'Kumar'
emp['lname'] = 'NIL'

sort1 = emp.sort{|a,b| a[1] <=> b[1]}
sort2 = emp.sort{|a,b| a[0] <=> b[0]}

sort1.each do
	|jodi|
	print jodi[0]
	print "=>"
	print jodi[1]
	puts
end
puts "+++++++++++++++++"

sort2.each do
	|jodi|
	print jodi[0]
	print "=>"
	print jodi[1]
	puts
end

puts emp.inspect
puts emp.length

if emp.has_key?("fname")
	puts "Hash has the key first name"
else
	puts "Searched key not found"
	
end

if emp.has_value?("Pandita")
	puts "Searched value found"
else
	puts "Searched value not found"
	
end

puts emp.each_with_index{ |(key,value),index| puts index}
