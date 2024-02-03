# frozen_string_literal: true

require './movie'

puts 'Фильмы какого режиссера вы хотите посмотреть?'

director = gets.chomp
movies = []

3.times do
  puts 'Какой-нибудь его хороший фильм?'
  name = gets.chomp
  movie = Movie.new(name, director)
  movies << movie
end

random_movie = movies.sample

puts "И сегодня вечером рекомендую посмотреть - #{random_movie.name}."
puts "Режиссер: #{random_movie.director}."
