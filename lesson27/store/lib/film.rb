# frozen_string_literal: true

# Film class
class Film < Product
  attr_reader :year, :director
  def initialize(name, price, amount, year, director)
    super(name, price, amount)
    @year = year
    @director = director
  end

  def to_s
    "Фильм #{@name}, #{@year}, реж. #{@director}, #{@price} руб. (осталось - #{@amount})"
  end
end
