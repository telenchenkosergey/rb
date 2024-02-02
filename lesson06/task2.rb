# frozen_string_literal: true

arr = [1, 2, 3, 4, 5]

puts 'Исходный массив'
p arr

puts 'Массив в обратном порядке'
p arr.reverse

puts 'Исходный массив (не изменился)'
p arr

arr.reverse!

puts 'Исходный массив (после изменения)'
p arr
