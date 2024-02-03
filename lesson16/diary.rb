# frozen_string_literal: true

current_path = "./#{File.dirname(__FILE__)}"
line = ''
all_lines = []
sep = '-' * 20

puts 'Введите вашу запись: (конец ввода - \'q\')'

while line != 'q'
  line = $stdin.gets.chomp
  all_lines << line
end
all_lines.pop

time = Time.now
file_name = time.strftime('%Y-%m-%d')
current_time = time.strftime('%H:%M')

f = File.new("#{current_path}/#{file_name}.txt", 'a:UTF-8')
f.puts current_time
f.puts sep
all_lines.each { |line| f.puts line }
f.puts sep
f.close

puts "Ваша запись сохранена в файл #{file_name}.txt"
