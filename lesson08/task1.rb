# frozen_string_literal: true

temperature = ARGV[0]
season = ARGV[1]

if season.nil?
  puts 'Какая сейчас температура?'
  temperature = $stdin.gets.to_i
  puts "Какое время года?\n\t0 - весна\n\t1 - лето\n\t2 - осень\n\t3 - зима"
  season = $stdin.gets.to_i
end

temperature = temperature.to_i
season = season.to_i

if  temperature >= 22 && temperature <= 30 ||
    temperature >= 15 && temperature <= 35 && season == 1
  puts 'Скорее идите в парк, соловьи поют!'
else
  puts 'Соловьи сейчас молчат, греются или прохлождаются :)'
end
