# frozen_string_literal: true

# Product class
class Product
  attr_reader :price, :amount, :name

  def initialize(name, price, amount)
    @name = name
    @price = price
    @amount = amount
  end
end
