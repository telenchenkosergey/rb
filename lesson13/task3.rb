# frozen_string_literal: true

def content_maker(file)
  file_path = "./data/#{file}.txt"
  return 'Файл не найден' unless File.exist?(file_path)

  f = File.new(file_path, 'r:UTF-8')
  content = f.readlines
  f.close
  content
end

right_answers = 0

questions = content_maker('questions')
answers = content_maker('answers')

questions.each_with_index do |q, i|
  puts q
  answer = gets.chomp
  if answer == answers[i].chomp
    puts 'Верно!'
    right_answers += 1
  else
    puts "Неправильно. Правильный ответ - #{answers[i]}"
  end
end

puts "У вас #{right_answers} правильных ответов из #{questions.length}"
