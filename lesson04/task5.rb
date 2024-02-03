# frozen_string_literal: true

t = Time.now

weekday = t.wday

if weekday == 0 || weekday == 6
  puts 'Сегодня выходной!'
else
  puts 'Сегодня будний день, за работу!'
end
