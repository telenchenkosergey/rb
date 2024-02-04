# frozen_string_literal: true

require 'digest/md5'
require 'digest/sha1'

puts 'Введите слово или фразу для шифрования:'
str = $stdin.gets.chomp
puts 'Каким способом зашифровать?'
puts "\t1. MD5\n\t2. SHA1"
encryptor = $stdin.gets.to_i

puts 'Вот что получилось:'
if encryptor == 1
  puts Digest::MD5.hexdigest(str)
elsif encryptor == 2
  puts Digest::SHA1.hexdigest(str)
else
  puts 'Не получилось. Неверный выбор :('
end
