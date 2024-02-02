# frozen_string_literal: true

file_name = './data/sample.txt'
f = File.new(file_name, 'r:UTF-8')

line_count = 0
empty_count = 0

if File.exist?(f)
  content = f.readlines
  f.close
else
  puts 'File is not found'
end

# puts content.to_s

content.each do |line|
  line_count += 1
  empty_count += 1 if line.chomp == ''
end

puts "Открыли файл: #{file_name}"
puts "Всего строк: #{line_count}"
puts "Пустых строк: #{empty_count}"
puts "Последние 5 строк файла:"
puts content.last(5)
