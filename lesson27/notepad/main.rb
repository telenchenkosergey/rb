# frozen_string_literal: true

require_relative './lib/post'
require_relative './lib/link'
require_relative './lib/memo'
require_relative './lib/task'

puts 'Привет! Я твой Блокнот.'
puts 'Что хотите записать?'

choices = Post.post_types
choice = -1

until choice >= 0 && choice <= choices.size
  choices.each_with_index { |type, index| puts "#{index}. #{type}" }
  choice = $stdin.gets.to_i
end

entry = Post.create(choice)
entry.read_from_console
entry.save

puts 'Запись сохранена'
