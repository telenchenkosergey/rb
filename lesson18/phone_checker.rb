# frozen_string_literal: true

puts 'Введите ваш номер телефона:'
phone_number = $stdin.gets.chomp

if phone_number.match(/^\+*[\d\-\s()]*/)
  puts 'Спасибо!'
else
  puts 'Это не номер телефона'
end
