# frozen_string_literal: true

require_relative './lib/product'
require_relative './lib/book'
require_relative './lib/film'

f = Film.new(290, 5)
puts "Фильм Леон стоит #{f.price} руб."
