#!/usr/bin/ruby

module Ape
  def human
    puts 'Hey am a Male!'
  end
end

class People
  include Ape
end

People.new.human # heyyyyoooo!
People.foo # NoMethodError: undefined method ‘foo’ for Bar:Class

class Humans
  extend Ape
end

Humans.human # heyyyyoooo!
Humans.new.foo # NoMethodError: undefined method ‘foo’ for #<Baz:0x1e708>