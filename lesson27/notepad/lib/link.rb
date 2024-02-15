# frozen_string_literal: true

# Link class
class Link < Post
  def initialize
    super
    @url = ''
  end

  def read_from_console
    puts 'Введите адрес ссылки:'
    @url = $stdin.gets.chomp
    puts 'Что это за ссылка?'
    @text = $stdin.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y-%m-%d, %H:%M:%S')}\n\r"
    [@url, @text, time_string]
  end
end
