#!/usr/local/bin/ruby

# Creating a Mixin
module Person
    def initialize(name, city, age)
        @name = name
        @city = city
        @age = age
    end

    def get_person_details()
        puts "Name: %s" % [@name]
        puts "City: %s" % [@city]
        puts "Age: %s" % [@age]
    end
end

class Employee
    include Person
    def initialize(name, city, age, salary)
        super(name, city, age)
        @salary = salary
    end

    def get_salary
        puts "Salary: %s" % [@salary.to_s]
    end
end

# Creating the object of Employee class
emp = Employee.new("Amit", "Delhi", 24, 50000)
emp.get_person_details  # get the person detals 
emp.get_salary          # get the salary details