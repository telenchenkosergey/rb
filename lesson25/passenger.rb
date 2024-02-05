# frozen_string_literal: true

ticket1 = {
  :number => 'PM2010398 050298',
  :destination => 'Самара',
  :departure => 'Луганск',
  :first_name => 'Валерий',
  :middle_name => 'Альбертович',
  :last_name => 'Жмышенко',
  :passport => 'HB1234567'
}

ticket2 = {
  :number => 'PM2083798 056588',
  :destination => 'Анапа',
  :departure => 'Ростов-на-Дону',
  :first_name => 'Анатолий',
  :middle_name => 'Михайлович',
  :last_name => 'Шпак',
  :passport => 'HB0954567'
}

ticket3 = {
  :number => 'PM1110398 050298',
  :destination => 'Саратов',
  :departure => 'Тольятти',
  :first_name => 'Антонина',
  :middle_name => 'Лаврентьевна',
  :last_name => 'Хачатурян',
  :passport => 'МР1265748'
}

tickets = [
  ticket1,
  ticket2,
  ticket3
]

tickets.each_with_index do |ticket, i|
  puts "* * * Место № #{i + 1} * * *"
  puts "Билет №: #{ticket[:number]}"
  puts "Маршрут: #{ticket[:departure]} - #{ticket[:destination]}"
  puts "Пассажир: #{ticket[:first_name]} #{ticket[:middle_name][0]}. #{ticket[:last_name]}"
  puts "Паспорт: #{ticket[:passport]}"
end
