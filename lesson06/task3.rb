# frozen_string_literal: true

cars = %w[Audi BMW Mercedes Opel Volkswagen Porsche Toyota Mazda Nissan Mitsubishi Honda]

puts "У нас всего #{cars.length} машин. Вам какую?"

choice = gets.to_i

if choice <= 0 || choice > cars.length
  puts 'Извините, машины с таким номером у нас нет :('
else
  puts "Поздравляем, вы получили\n#{cars[choice - 1]}"
end
