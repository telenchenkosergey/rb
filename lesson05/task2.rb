# frozen_string_literal: true

puts 'Сколько сейчас стоит 1 доллар?'
rate = gets.to_f

puts 'Сколько у вас рублей?'
amount = gets.to_f

amount_in_dollars = amount / rate

puts "Ваши запасы равны: #{amount_in_dollars.round}$"
