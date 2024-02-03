# frozen_string_literal: true

# Movie class
class Movie
  attr_reader :name, :director

  def initialize(name, director)
    @name = name
    @director = director
  end
end
