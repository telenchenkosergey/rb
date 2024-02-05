# frozen_string_literal: true

# printing results of testing
class ResultReader
  attr_reader :result

  def initialize(questionnaire)
    @result = questionnaire.read_from("./data/results/results#{show_result(questionnaire.points)}.txt")
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
