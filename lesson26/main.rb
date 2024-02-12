# frozen_string_literal: true

current_path = "./#{File.dirname(__FILE__)}"
require "#{current_path}/clothes"
require "#{current_path}/clothes_collection"
require "#{current_path}/reader"
files = Dir['./data/*']

clothes = []
collection = []

files.each do |file|
  r = Reader.new
  r.read_from(file)
  c = Clothes.new(r)
  clothes << c
end

puts 'Сколько градусов за окном? (можно с минусом)'
actual_temperature = $stdin.gets.to_i

clothes.each do |c|
  collection << c if c.ok_for_the_weather?(actual_temperature)
end

cc = ClothesCollection.new(collection)
puts cc.types
puts cc.same_type_clothing
