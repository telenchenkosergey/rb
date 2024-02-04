# frozen_string_literal: true

variable = nil

class MyClass
  def initialize
    @variable = nil
  end

  def check_variables
    puts "Переменная '@variable': #{defined?(@variable)}"
    puts "Переменная 'variable': #{defined?(variable)}"
  end
end

a = MyClass.new
a.check_variables
