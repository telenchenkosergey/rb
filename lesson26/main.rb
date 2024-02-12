# frozen_string_literal: true

require_relative 'clothes'
require_relative 'clothes_collection'
require_relative 'reader'
files = Dir["#{__dir__}/data/*.txt"]

clothes = files.map do |file|
  r = Reader.new
  r.read_from(file)
  c = Clothes.new(r)
end

puts 'Сколько градусов за окном? (можно с минусом)'
actual_temperature = $stdin.gets.to_i
suitable_clothes = clothes.select { |cloth| cloth.ok_for_the_weather?(actual_temperature) }

cc = ClothesCollection.new
types = cc.clothing_types(suitable_clothes)
puts types
