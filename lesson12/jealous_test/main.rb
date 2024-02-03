# frozen_string_literal: true

require './questionnaire'
require './result'

q = Questionnaire.new
q.ask_questions

r = Result.new(q)
r.show_result(q.points)
