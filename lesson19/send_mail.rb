# frozen_string_literal: true

require 'pony'
require 'io/console'

puts 'С какого ящика на mail.ru отправить письмо?'
my_mail = $stdin.gets.chomp

puts "Введите пароль от почты #{my_mail}"
password = $stdin.noecho(&:gets).chomp

puts 'Кому отправить письмо?'
send_to = $stdin.gets.chomp

puts 'Введите тему сообщения:'
subject = $stdin.gets.chomp

puts 'Что написать в письме?'
body = $stdin.gets.chomp

begin
  Pony.mail(
    {
      subject:,
      body:,
      to: send_to,
      from: my_mail,
      via: :smtp,
      via_options: {
        address: 'smtp.mail.ru',
        port: '465',
        tls: true,
        user_name: my_mail,
        password:,
        authentication: :plain
      }
    }
  )
  puts 'Письмо успешно отправлено!'
rescue Net::SMTPAuthenticationError => e
  puts "Неправильный пароль #{e.message}"
end
