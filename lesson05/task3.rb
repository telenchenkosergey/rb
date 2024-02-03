# frozen_string_literal: true

puts "Какая валюта у вас на руках?\n\t1. Доллары\n\t2. Рубли"
currency = gets.to_i

puts 'Сколько сейчас стоит 1 доллар?'
rate = gets.to_f

if currency == 1
  puts 'Сколько у вас долларов?'
  amount = gets.to_f
  roubles = amount * rate
  puts "Ваши запасы равны: #{roubles.round(2)} руб."
else
  puts 'Сколько у вас рублей?'
  amount = gets.to_f
  dollars = amount / rate
  puts "Ваши запасы равны: #{dollars.round(2)}$"
end
