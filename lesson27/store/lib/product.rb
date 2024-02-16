# frozen_string_literal: true

# Product class
class Product
  attr_accessor :price, :amount, :title

  def initialize(options)
    @title = options[:title]
    @price = options[:price]
    @amount = options[:amount]
  end
end
