# frozen_string_literal: true

current_path = "./#{File.dirname(__FILE__)}"

require "#{current_path}/questionnaire"
require "#{current_path}/result_reader"

questions_file = "#{current_path}/data/questions.txt"

q = Questionnaire.new(questions_file)
q.ask_questions

r = ResultReader.new(q)
puts r.result
