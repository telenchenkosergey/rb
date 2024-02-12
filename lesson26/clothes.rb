# frozen_string_literal: true

# Clothes class
class Clothes
  attr_reader :type
  def initialize(reader)
    @name = reader.name
    @type = reader.type
    @temperature_min = reader.temperature[0].to_i
    @temperature_max = reader.temperature[1].to_i
  end

  def ok_for_the_weather?(temperature)
    temperature >= @temperature_min && temperature < @temperature_max
  end

  def to_s
    "#{@name} (#{@type}) #{@temperature_min}..#{@temperature_max}"
  end
end
