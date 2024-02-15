# frozen_string_literal: true

# Parent class
class Parent
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def obedient?
    true
  end

  def to_s
    "#{@name}: #{obedient?}"
  end
end
