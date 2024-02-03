# frozen_string_literal: true

require 'translit'

puts 'Введите фразу для транслитерации'
input = $stdin.gets.chomp
t = Translit.convert(input)
puts t

puts 'Введите фразу для обратной транслитерации'
input = $stdin.gets.chomp
t = Translit.convert(input)
puts t
