# frozen_string_literal: true

puts 'Введите N:'
n = gets.to_i

arr = (1..n).to_a

sum = 0

arr.each { |i| sum += i }

puts "Сумма чисел: #{sum}"
