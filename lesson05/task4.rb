# frozen_string_literal: true

secret_number = rand(16)
puts secret_number

attempt = 0

puts 'Загадано число от 0 до 15. Угадайте какое!'

while attempt < 3
  user_input = gets.to_i
  if user_input == secret_number
    puts 'Ура, вы выиграли!'
    break
  else
    if user_input < secret_number
      if user_input + 2 <= secret_number
        print 'Холодно '
      else
        print 'Тепло '
      end
      puts '(нужно больше)'
    else
      if user_input - 2 > secret_number
        print 'Холодно '
      else
        print 'Тепло '
      end
      puts '(нужно меньше)'
    end
  end
  attempt += 1
end

puts "Вы проиграли :( Загаданное число: #{secret_number}" if attempt == 3
