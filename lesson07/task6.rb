# frozen_string_literal: true

list = %w[масло молоко хлопья курица помидоры]

until list.empty?
  puts 'Нужно купить'
  p list

  puts 'Что купили?'
  bought = gets.chomp

  list.delete(bought) if list.include? bought
end
