# frozen_string_literal: true

require './methods'

regexp_string = get_random_regexp_string

puts "Придумайте как можно больше слов, содержащих шаблон #{regexp_string.gsub('.', '*')}"
puts "Для выхода введите 'x'"

count = 0

loop do
  word = $stdin.gets.chomp

  break if word.downcase == 'x'

  if word_exist?(word)
    if word =~ /#{regexp_string}/
      puts '...OK =)'
      count += 1
    else
      puts '..не подходит =('
    end
  else
    puts 'Нет такого слова!'
  end
end

puts "Игра окончена, ваш счет: #{count}."
