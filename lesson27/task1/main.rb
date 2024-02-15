# frozen_string_literal: true

require_relative './lib/parent'
require_relative './lib/child'

p1 = Parent.new('Sergey')
p2 = Parent.new('Paul')
c1 = Child.new('Max')
c2 = Child.new('Olesya')

puts p1
puts p2
puts c1
puts c2
