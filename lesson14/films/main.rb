# frozen_string_literal: true

current_path = "./#{File.dirname(__FILE__)}"
require "#{current_path}/reader"
require "#{current_path}/movie"

files = Dir['./films/*']

movies = []
directors = []

files.each do |file|
  r = Reader.new(file)
  movie = Movie.new(r)
  movies << movie
  directors << movie.director
  directors.uniq!
end

puts 'Программа \'Фильм на вечер\''

directors.each_with_index { |director, i| puts "#{i + 1}: #{director}" }
puts 'Фильм какого режиссера вы хотите сегодня посмотреть?'
choice = gets.to_i
chosen_director = directors[choice - 1]

movies_by_chosen_director = []

movies.each do |movie|
  movies_by_chosen_director << movie if movie.director == chosen_director
end

puts 'И сегодня вечером рекомендую посмотреть:'
puts movies_by_chosen_director.sample
