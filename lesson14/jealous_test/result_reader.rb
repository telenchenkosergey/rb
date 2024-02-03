# frozen_string_literal: true

# printing results of testing
class ResultReader
  attr_reader :result

  def initialize(questionnaire)
    @result = read_from("./data/results/results#{show_result(questionnaire.points)}.txt")
  end

  def read_from(file_name)
    if File.exist?(file_name)
      f = File.new(file_name, 'r:UTF-8')
      content = f.read
      f.close
      content
    else
      '*** Файл не найден ***'
    end
  end

  def show_result(points)
    if points >= 30
      0
    elsif points >= 25
      1
    elsif points >= 19
      2
    elsif points >= 14
      3
    elsif points >= 9
      4
    elsif points >= 4
      5
    else
      6
    end
  end
end
