# frozen_string_literal: true

puts 'Введите ваш email:'
email = $stdin.gets.chomp

if email =~ /^[\w\.-]+@[\w\.]+/
  puts 'Спасибо!'
else
  puts 'Это не email'
end
