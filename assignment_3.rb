#!/usr/bin/ruby

#Singleton Methods
class Foo
  def shout
    puts "I'm Foo"
  end
end

foo=Foo.new
foo.shout

class Foo
	def shout
	  puts "I'm still Foo, but I have been overridden"
	end

end
foo.shout



puts "="*100


#Metaclasses

class Goo
end

foo=Goo.new
bar= Goo.new
def foo.shout
  puts "Go Go Go!"
end

def bar.bark
	puts "Bow Bow"
end

foo.shout
bar.bark  
p Goo.new.respond_to?(:shout)
p Goo.new.respond_to?(:bark)


#Access Control


class ClassAccess  
  def m1
  	puts "Public Method call"          # this method is public  
  end  
  protected  
    def m2        # this method is protected  
    	puts "Protected Method call"
    	m3
    end  
  private  
    def m3        # this method is private  
    	puts "Private Method call"
    end  
end  
class Child < ClassAccess
	def call_protected
		m2
		m3
	end
end

ca = ClassAccess.new  
cb = Child.new
cb.call_protected

ca.m1  
#ca.m2  
#ca.m3 


#Implementing Modules
module Trig
   PI = 3.141592654
   def Trig.sin(x)
   # ..
   end
   def Trig.cos(x)
   # ..
   end
end