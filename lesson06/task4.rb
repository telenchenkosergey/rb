# frozen_string_literal: true

figure = %w[камень ножницы бумага]

puts 'Добро пожаловать в Камень-Ножницы-Бумага'

puts "Сделайте ваш выбор\n\t0 - Камень\n\t1 - Ножницы\n\t2 - Бумага"

user = gets.to_i
comp = rand(3)

condition = user == 0 && comp == 1 ||
            user == 1 && comp == 2 ||
            user == 2 && comp == 0

puts "Вы выбрали: #{figure[user]}"
puts "Компьютер выбрал: #{figure[comp]}"

if condition
  puts 'Вы выиграли'
elsif user == comp
  puts 'Ничья'
else
  puts 'Выиграл компьютер'
end
