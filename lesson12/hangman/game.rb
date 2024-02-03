# frozen_string_literal: true

# Game class
class Game
  def initialize(word)
    @letters = get_letters(word)
    @good_letters = []
    @bad_letters = []
    @errors = 0
    @status = 0
  end

  def get_letters(word)
    abort 'Вы не ввели слово' if [nil, ''].include?(word)
    word.split('')
  end

  def next_step(letter)
    return if @status == -1 || @status == 1

    return if good_letters.include?(letter) || bad_letters.include?(letter)

    if @letters.include?(letter) ||
       letter == 'е' && @letters.include?('ё') ||
       letter == 'ё' && @letters.include?('е') ||
       letter == 'и' && @letters.include?('й') ||
       letter == 'й' && @letters.include?('и')
      @good_letters << letter

      @good_letters << 'ё' if letter == 'е'

      @good_letters << 'е' if letter == 'ё'

      @good_letters << 'й' if letter == 'и'

      @good_letters << 'и' if letter == 'й'

      @status = 1 if (@letters - @good_letters).empty?

    else
      @bad_letters << letter
      @errors += 1
      @status = -1 if @errors >= 7
    end
  end

  def ask_next_letter
    puts 'Введите следующую букву:'
    letter = ''
    letter = $stdin.gets.chomp while letter == ''
    next_step(letter)
  end

  attr_reader :letters, :good_letters, :bad_letters, :errors, :status
end
