# frozen_string_literal: true

require_relative './lib/product'
require_relative './lib/book'
require_relative './lib/film'

f1 = Film.new('Леон', 990, 5, 1994, 'Люк Бессон')
f2 = Film.new('Дурак', 390, 1, 2014, 'Юрий Быков')
b1 = Book.new('Идиот', 1500, 10, 'роман', 'Федор Достоевский')

puts f1
puts f2
puts b1
