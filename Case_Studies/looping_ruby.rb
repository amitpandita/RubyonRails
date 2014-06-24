#!/usr/local/bin/ruby


first_name = ["Amit", "Suresh", "Ajit", "Yogesh", "Jatin"]
last_name = ["Pandita", "Kumar", "Sharma", "Prabhu", "Dubey"]

# for loop
puts ""
puts "====================="
puts "For Loop (< length): "
puts "====================="
for i in 0...first_name.length
    puts "Sirname of '%s' is %s" % [first_name[i].capitalize, last_name[i].upcase]
end

puts ""
puts "======================"
puts "For Loop (<= length): "
puts "======================"
for i in 1..first_name.length
    puts "Sirname of '%s' is %s" % [first_name[i-1].capitalize, last_name[i-1].upcase]
end


# each loop
puts ""
puts "================"
puts "Each Loop (do): "
puts "================"
i = 0
first_name.each do |name|
    puts "Sirname of '%s' is %s" % [name.capitalize, last_name[i].upcase]
    i += 1
end

puts ""
puts "================"
puts "Each Loop ({}): "
puts "================"
i = 0
first_name.each { |name|
    puts "Sirname of '%s' is %s" % [name.capitalize, last_name[i].upcase]
    i += 1
}

# while Loop
puts ""
puts "============"
puts "While Loop: "
puts "============"
i = 0
while i < first_name.length
    puts "Sirname of '%s' is %s" % [first_name[i].capitalize, last_name[i].upcase]
    i += 1
end