# frozen_string_literal: true

# Book class
class Book < Product
  attr_accessor :genre, :author

  def initialize(options)
    super(options)
    @genre = options[:genre]
    @author = options[:author]
  end

  def to_s
    "Книга '#{@title}', #{@genre}, автор - #{@author}, #{@price} руб. (осталось - #{@amount})"
  end
end
