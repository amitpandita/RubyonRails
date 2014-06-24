#!/usr/local/bin/ruby


module MathModule
    def square(number)
        return number * number
    end
end

class Demo
    include MathModule
end

d = Demo.new
puts d.square(3)