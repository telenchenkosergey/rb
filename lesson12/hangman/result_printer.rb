# frozen_string_literal: true

# Result Printer class
class ResultPrinter
  def print_status(game)
    cls
    puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"

    puts "Ошибок (#{game.errors}): #{game.bad_letters.join(', ')}"

    print_gallows(game.errors)

    if game.status == -1
      puts 'Вы проиграли :('
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
    case errors
    when 0
      puts "
        _______
        |/
        |
        |
        |
        |
        |
        |
        |
      __|________
      |         |
      "
    when 1
      puts "
        _______
        |/
        |     ( )
        |
        |
        |
        |
        |
        |
      __|________
      |         |
      "
    when 2
      puts "
        _______
        |/
        |     ( )
        |      |
        |
        |
        |
        |
        |
      __|________
      |         |
      "
    when 3
      puts "
        _______
        |/
        |     ( )
        |      |_
        |        \\
        |
        |
        |
        |
      __|________
      |         |
      "
    when 4
      puts "
        _______
        |/
        |     ( )
        |     _|_
        |    /   \\
        |
        |
        |
        |
      __|________
      |         |
      "
    when 5
      puts "
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |
        |
        |
      __|________
      |         |
      "

    when 6
      puts "
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      "
    when 7
      puts "
        _______
        |/     |
        |     (_)
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      "
    end
  end

  def cls
    system 'clear' or system 'cls'
  end
end
