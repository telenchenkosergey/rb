# frozen_string_literal: true

arr = [1, 2, 3, 4, 5, 6, 7]
reversed_arr = []

puts 'Исходный массив:'
p arr

while arr.length > 0
  reversed_arr << arr.pop()
end

puts 'Новый массив, полученный из исходного:'
p reversed_arr
