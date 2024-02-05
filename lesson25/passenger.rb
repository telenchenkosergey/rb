# frozen_string_literal: true

ticket = {
  :number => 'PM2010398 050298',
  :destination => 'Самара',
  :departure => 'Луганск',
  :first_name => 'Валерий',
  :middle_name => 'Альбертович',
  :last_name => 'Жмышенко',
  :passport => 'HB1234567'
}

puts "Билет №: #{ticket[:number]}"
puts "Маршрут: #{ticket[:departure]} - #{ticket[:destination]}"
puts "Пассажир: #{ticket[:first_name]} #{ticket[:middle_name][0]}. #{ticket[:last_name]}"
puts "Паспорт: #{ticket[:passport]}"
