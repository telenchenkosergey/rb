# frozen_string_literal: true

def equal_amount?(rate, dollars, roubles)
  (roubles / rate).round(2) == dollars.round(2)
end

def need_more_dollars?(rate, dollars, roubles)
  (roubles / rate).round(2) > dollars.round(2)
end

puts 'Какой сейчас курс доллара?'
rate = gets.to_f

puts 'Сколько у вас долларов?'
dollars = gets.to_f

puts 'Сколько у вас рублей?'
roubles = gets.to_f

if equal_amount?(rate, dollars, roubles)
  puts 'Ваш портфель сбалансирован'
else
  diff = ((roubles / rate - dollars) / 2).round(2).abs
  if need_more_dollars?(rate, dollars, roubles)
    puts "Вам нужно купить #{diff} $"
  else
    puts "Вам нужно продать #{diff} $"
  end
end
