require './methods.rb'
cls

puts 'Добро пожаловать на Виселицу!'

letters = get_letters # todo

errors = 0

bad_letters = []
good_letters = []

while errors < 7
  print_status(letters, bad_letters, good_letters, errors)

  puts 'Введите букву'
  user_input = get_user_input # todo

  result = check_result(user_input, bad_letters, good_letters, letters)

  if result == -1
    errors += 1
  elsif result == 1
    break
  end
end

print_status(letters, bad_letters, good_letters, errors)
