#!/usr/bin/ruby

#Implementing Inheritance
class Employee 
  def work  
    puts "Works as other employees do."  
  end  
end  
  
class Lead < Employee  
  def manage  
    puts "Handles his/her team"  
  end  
end  
  
emp = Lead.new
emp.work  
emp.manage



puts "="*100

class GF  
 def initialize  
  puts 'In GF class'  
 end  
 def gfmethod  
  puts 'GF method call'  
 end  
 def test
 	puts 'Test Method'
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
son.test



class Dog  
  def initialize(breed)  
    @breed = breed  
  end  
  
  def to_s  
    "(#@breed, #@name)"  
  end  
end  
  
class Lab < Dog  
  def initialize(breed, name)  
    super(breed)  
    @name = name  
  end  
end  
  
puts Lab.new("Labrador", "Benzy").to_s # .to_s is called implicitly with any puts or print or p method call  

puts "="*100
#Implicit Inheritance

class Parent
	def Animal()
		puts " Parent Animal()"
	end	
end

class Child < Parent
end

varp = Parent.new
varc = Child.new

varp.Animal()
varc.Animal()

puts "="*100
#Override Explicitly

class Parent
	ss = "kk"
	def initialize()
		@data = {'name' => 'Amit'}
	end
	def Animal()
		puts " Parent Animal()"
	end	
end

class Child < Parent
	def initialize()
		super()
		@data['city'] = 'ggn'
	end
    
    '''def get_data()
    	puts @data
    end
    '''
	def Animal()
		puts " Child Animal()"
	end	
end

varp = Parent.new
varc = Child.new

varp.Animal()
varc.Animal()
varc.ss
puts "="*100
puObject.@data
#Altering Before or After
class Parent
	def Animal()
		puts " Parent Animal()"
	end	
end

class Child < Parent
	def Animal()
		puts " Child  before Parent Animal() called"
		super()
		puts " Child  before Parent Animal() called"
	end	
end

varp = Parent.new
varc = Child.new

varp.Animal()
varc.Animal()

puts "="*100

#Implementing Composition

class Other

    def override()
        puts "OTHER override()"
    end

    def implicit()
        puts "OTHER implicit()"
    end

    def altered()
        puts "OTHER altered()"
    end
end

class Child

    def initialize()
        @other = Other.new()
    end

    def implicit()
        @other.implicit()
    end
    
    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "CHILD, BEFORE OTHER altered()"
        @other.altered()
        puts "CHILD, AFTER OTHER altered()"
    end
end

son = Child.new()

son.implicit()
son.override()
son.altered()
