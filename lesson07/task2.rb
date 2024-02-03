# frozen_string_literal: true

arr = []

puts 'Какой длины должен быть массив?'
n = gets.to_i

arr << rand(101) while arr.length != n

p arr

max = 0

arr.each { |i| max = i if i > max }

puts "Самое большое число:\n#{max}"
