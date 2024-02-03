# frozen_string_literal: true

# class for asking questions
class Questionnaire
  attr_reader :points

  def initialize(file_name)
    @points = 0
    @questions = read_from(file_name)
  end

  def read_from(file_name)
    if File.exist?(file_name)
      f = File.new(file_name, 'r:UTF-8')
      content = f.readlines
      f.close
      content
    else
      puts '*** Файл не найден ***'
    end
  end

  def score_points(answer)
    @points += 2 if answer == 'да'
    @points += 1 if answer == 'иногда'
  end

  def ask_questions
    @questions.each do |question|
      puts question
      answer = $stdin.gets.chomp
      while answer != 'да' && answer != 'нет' && answer != 'иногда'
        puts 'Вы ввели неверный ответ. Доступные варианты - да, нет, иногда'
        answer = $stdin.gets.chomp
      end
      score_points(answer)
    end
  end
end
