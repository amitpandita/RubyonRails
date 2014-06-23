#!/usr/local/bin/ruby

def occurrences(list, key)
    i = 0
    list.each do |l|
        if key == l
            i += 1
        end
    end
    return i
end

puts occurrences([1,2,3,4,5,4,3,2,3,5,6], 3)