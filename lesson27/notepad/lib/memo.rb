# frozen_string_literal: true

# Memo class
class Memo < Post
  def read_from_console
    puts 'Введите вашу запись (q - конец ввода)'
    @text = []
    line = nil
    while line != 'q'
      line = $stdin.gets.chomp
      @text << line
    end
    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y-%m-%d, %H:%M:%S')}\n\r\n\r"
    @text.unshift(time_string)
  end
end
