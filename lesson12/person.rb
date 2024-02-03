# frozen_string_literal: true

# Person class
class Person
  def initialize(first_name, middle_name, age)
    @first_name = first_name
    @middle_name = middle_name
    @age = age
    @movie = ''
  end

  def old?
    @age > 60
  end

  def info
    adultery = 'молодой'
    if old?
      puts "#{@first_name} #{@middle_name}"
      adultery = 'пожилой'
    else
      puts @first_name
    end
    puts "И ему #{@age} - #{adultery}"
    puts "С любимым фильмом: #{movie.name}"
  end

  attr_accessor :movie
end
