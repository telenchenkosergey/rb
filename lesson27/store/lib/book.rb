# frozen_string_literal: true

# Book class
class Book < Product
  attr_reader :genre, :author
  def initialize(name, price, amount, genre, author)
    super(name, price, amount)
    @genre = genre
    @author = author
  end

  def to_s
    "Книга #{@name}, #{@genre}, автор - #{@author}, #{@price} руб. (осталось - #{@amount})"
  end
end
