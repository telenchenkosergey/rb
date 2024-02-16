# frozen_string_literal: true

# Film class
class Film < Product
  attr_accessor :year, :director

  def initialize(options)
    super(options)
    @year = options[:year]
    @director = options[:director]
  end

  def to_s
    "Фильм '#{@title}', #{@year}, реж. #{@director}, #{@price} руб. (осталось - #{@amount})"
  end
end
