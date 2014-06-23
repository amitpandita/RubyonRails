#!/usr/bin/ruby

#For Creating a New File(if not already existing) and writing to it
File.open('test.rb', 'w') do |a|
	a.puts "Created by Amit Pandita"
end

#Reading from a File

File.open('test.rb', 'r') do |b|  
  while line = b.gets  
    puts line  
  end  
end 