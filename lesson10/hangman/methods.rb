# frozen_string_literal: true

def get_letters
  word = ARGV[0]

  abort 'Вы не ввели слово' if [nil, ''].include?(word)

  word.split('')
end

def get_user_input
  letter = ''

  letter = $stdin.gets.chomp while letter == ''

  letter
end

def check_result(user_input, bad_letters, good_letters, letters)
  return 0 if good_letters.include?(user_input) || bad_letters.include?(user_input)

  if  letters.include?(user_input) ||
      user_input == 'е' && letters.include?('ё') ||
      user_input == 'ё' && letters.include?('е') ||
      user_input == 'и' && letters.include?('й') ||
      user_input == 'й' && letters.include?('и')
    good_letters << user_input

    if user_input == 'е'
      good_letters << 'ё'
    end

    if user_input == 'ё'
      good_letters << 'е'
    end

    if user_input == 'и'
      good_letters << 'й'
    end

    if user_input == 'й'
      good_letters << 'и'
    end

    return 1 if (letters - good_letters).empty?

    0

  else
    bad_letters << user_input
    -1
  end
end

def get_word_for_print(letters, good_letters)
  result = ''
  letters.each do |letter|
    result += if good_letters.include?(letter)
                "#{letter} "
              else
                '__ '
              end
  end
  result
end

# 1. Выводить загаданное слово
# 2. Показывать счетчик ошибок
# 3. Сообщить о проигрыше, если ошибок более 7
# 4. Сообщить о победе, если слово загадано
def print_status(letters, bad_letters, good_letters, errors)
  puts "\nСлово: #{get_word_for_print(letters, good_letters)}"

  puts "Ошибки: #{errors} -- #{bad_letters.join(', ')}"

  if errors >= 7
    puts 'Вы проиграли :('
  elsif (letters - good_letters).empty?
    puts 'Поздравляем! Вы выиграли!'
  else
    puts "Попыток осталось: #{7 - errors}"
  end
end

def cls
  system 'clear' or system 'cls'
end
