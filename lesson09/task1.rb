# frozen_string_literal: true

def circumference
  radius = $stdin.gets.to_f
  Math::PI * radius**2
end

puts 'Введите радиус круга:'
c = circumference
puts "Площадь круга #{c}"
puts 'Введите радиус второго круга:'
c = circumference
puts "Площадь второго круга #{c}"
