# frozen_string_literal: true

require './bodybuilder'

a = Bodybuilder.new
b = Bodybuilder.new
c = Bodybuilder.new

a.pump('pectoral')
a.pump('biceps')
a.pump('pectoral')
a.pump('biceps')
a.pump('pectoral')
a.pump('triceps')
a.pump('pectoral')
a.pump('triceps')

b.pump('biceps')
b.pump('biceps')
b.pump('pectoral')
b.pump('biceps')
b.pump('pectoral')
b.pump('triceps')
b.pump('pectoral')
b.pump('triceps')

c.pump('pectoral')
c.pump('pectoral')
c.pump('pectoral')
c.pump('biceps')
c.pump('pectoral')
c.pump('triceps')
c.pump('triceps')
c.pump('triceps')

puts "Первый бодибилдер:\n#{a.info}"
puts "Второй бодибилдер:\n#{b.info}"
puts "Третий бодибилдер:\n#{c.info}"
