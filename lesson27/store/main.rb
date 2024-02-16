# frozen_string_literal: true

require_relative './lib/product'
require_relative './lib/book'
require_relative './lib/film'

f1 = Film.new(title: 'Леон', price: 990, director: 'Люк Бессон')
f1.amount = 6
f1.year = 1994

b1 = Book.new(genre: 'роман', price: 150, author: 'Стивен Кинг')
b1.amount = 6
b1.title = 'Кладбище домашних животных'

puts f1
puts b1
