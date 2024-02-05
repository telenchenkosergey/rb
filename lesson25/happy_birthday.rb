# frozen_string_literal: true

def happy_birthday(person)
  str = "Дорогой, #{person[:name]}!\nПоздравляем Вас с Днем рождения!\nВам сегодня исполняется аж #{person[:age]}!\n" +
  "#{person[:congratulation]}"
end

zhmyh = {
  :name => 'Валерий',
  :age => 54,
  :congratulation => 'Шчасця! Здароуя!'
}

puts happy_birthday(zhmyh)
