#!/usr/local/bin/ruby

class Shape
    def initialize(name, color)
        @name = name
        @color = color
    end

    # setter for name
    def name=(name)
        @name = name
    end

    # setter for color
    def color=(color)
        @color = color
    end

   # getter for name 
    def name
        @name
    end

    # getter for color
    def color
        @color
    end

    def display_details
        puts @name
        puts @color
    end
end

# creating the object of Shape class
sh = Shape.new("Square", "Red")
puts "Before Change: "
sh.display_details() # display before change
puts ""

# change the property of Shape (using setter)
sh.name = "Circle"
sh.color = "Blue"

# get the property of Shape (using getter)
puts "Use Getter to display: "
puts sh.name
puts sh.color
puts ""

puts "After Change: "
sh.display_details() # display after change