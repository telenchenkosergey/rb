# frozen_string_literal: true

# Person class
class Person
  def initialize(first_name, middle_name, age)
    @first_name = first_name
    @middle_name = middle_name
    @age = age
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
  end
end

gavrila = Person.new('Гаврила', 'Петрович', 63)
fedor = Person.new('Федор', 'Николаевич', 77)
andrew = Person.new('Андрей', 'Валерьевич', 31)

puts 'У нас есть три человека:'
gavrila.info
fedor.info
andrew.info
