# frozen_string_literal: true

# Request class
class Request
  attr_reader :age, :gender, :income, :credit_history, :amount, :score

  def initialize(age, gender, income, credit_history, amount)
    @age = age
    @gender = gender
    @income = income
    @credit_history = credit_history
    @amount = amount
    @score = 0
  end

  def scoring_point
    @score += 10 if @age >= 21 && @age <= 40
    @score += 20 if @age > 40
    @score += 20 if @gender.downcase == 'f'
    @score += 10 if @income >= 20_001 && @income <= 40_000
    @score += 20 if @income > 40_000
    @score += 20 if @credit_history.downcase == 'y'
    @score += 20 if @amount <= 20_000
    @score += 10 if @amount >= 20_001 && @amount <= 40_000
  end

  def decision
    @score >= 50
  end
end
