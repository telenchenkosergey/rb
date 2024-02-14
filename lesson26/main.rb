# frozen_string_literal: true

# 1. Прочитать данные из файлов

files = Dir["#{__dir__}/data/*.txt"]

wardrobe =
  files.map do |file|
    content = File.readlines(file, chomp: true)
    temps = content[2].scan(/-?\d+/).map(&:to_i)
    content[2] = temps[0]..temps[1]
    content
  end

# 2. Спросить у пользователя температуру

puts 'Сколько градусов за окном? (можно с минусом)'

temp = $stdin.gets.to_i

# 3. Выбрать шмотки, которые подходят под температуру

suitable_garments =
  wardrobe.select { |garment| garment[2].include?(temp) }

# 4. Из оставшихся выбрать по 1 шмотке каждого типа

# Всегда первая шмотка каждого типа
uniq_suitable_garments =
  suitable_garments.uniq do |garment|
    garment[1]
  end

# Случайная шмотка каждого типа
#
# types = suitable_garments.map { |garment| garment[1] }
# types.uniq!
#
# uniq_suitable_garments =
#   types.map do |type|
#     suitable_garments
#       .select { |garment| garment[1] == type }
#       .sample
#   end

# 5. Вывести на экран

uniq_suitable_garments.each do |garment|
  puts "#{garment[0]} (#{garment[1]}) #{garment[2]}"
end
