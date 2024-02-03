# frozen_string_literal: true

# Movie class
class Movie
  attr_reader :director

  def initialize(reader)
    @name = reader.name
    @director = reader.director
    @year = reader.year
  end

  def to_s
    "#{@director} - #{@name} (#{@year})"
  end
end
