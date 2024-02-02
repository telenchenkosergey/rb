# frozen_string_literal: true

def ppi(size, width, height)
  ppi = (Math.sqrt(width**2 + height**2) / size).round
end

inch = gets.to_f
width = gets.to_i
height = gets.to_i

puts ppi(inch, width, height)
