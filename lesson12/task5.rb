# frozen_string_literal: true

require './request'

puts 'How old are you?'
age = gets.to_i

puts 'What is your gender? \'F\' or \'M\''
gender = gets.chomp

puts 'What is your monthly income?'
income = gets.to_i

puts 'Do you have credit history? \'Y\'or \'N\''
credit_history = gets.chomp

puts 'How much money do you need to credit?'
amount = gets.to_i

request = Request.new(age, gender, income, credit_history, amount)
request.scoring_point
puts "You're scoring point: #{request.score}"
puts "Loan #{request.decision ? 'approved' : 'denied'}"
