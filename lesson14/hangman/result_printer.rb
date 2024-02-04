# frozen_string_literal: true

# Result Printer class
class ResultPrinter
  def initialize
    @status_img = []

    counter = 0
    current_path = File.dirname(__FILE__)

    while counter <= 7
      file_name = "#{current_path}/img/#{counter}.txt"
      begin
        f = File.new(file_name, 'r:UTF-8')
        @status_img << f.read
        f.close
      rescue Errno::ENOENT
        @status_img << '***Такого файла нет***'
      end
      counter += 1
    end
  end

  def print_status(game)
    cls
    puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"

    puts "Ошибок (#{game.errors}): #{game.bad_letters.join(', ')}"

    puts print_gallows(game.errors)

    if game.status == -1
      puts 'Вы проиграли :('
      puts "Загаданное слово: #{game.letters.join}"
    elsif game.status == 1
      puts 'Поздравляем! Вы выиграли!'
    else
      puts "Попыток осталось: #{7 - game.errors}"
    end
  end

  def get_word_for_print(letters, good_letters)
    result = ''
    letters.each do |letter|
      result += if good_letters.include?(letter)
                  "#{letter} "
                else
                  '__ '
                end
    end
    result
  end

  def print_gallows(errors)
    @status_img[errors]
  end

  def cls
    system 'clear' or system 'cls'
  end
end
