# frozen_string_literal: true

def ppi(size, width, height)
  (Math.sqrt(width**2 + height**2) / size).round
end

puts 'Screen diagonal size in inches:'
size = gets.to_f
puts 'Screen width in pixels:'
width = gets.to_i
puts 'Screen height in pixels:'
height = gets.to_i

puts "PPI: #{ppi(size, width, height)}"
