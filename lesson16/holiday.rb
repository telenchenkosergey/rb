# frozen_string_literal: true

current_path = "./#{File.dirname(__FILE__)}"

time = Time.now
current_day = time.wday
current_date = time.strftime('%d-%m')

holidays = []
file_name = "#{current_path}/data/holidays.txt"
if File.exist?(file_name)
  f = File.new(file_name, 'r:UTF-8')
  content = f.readlines
  holidays = content
end

holidays.each(&:chomp!)

if  current_day.zero? ||
    current_day == 6 ||
    holidays.include?(current_date)
  puts 'Сегодня выходной!'
else
  puts 'Сегодня будний. Пора за работу!'
end
