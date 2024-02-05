# frozen_string_literal: true

# Game class
class Game
  MAX_ERRORS = 7
  def initialize(word)
    @letters = get_letters(word)
    @good_letters = []
    @bad_letters = []
    @errors = 0
    @status = :in_progress # :won, :lost
  end

  def get_letters(word)
    abort 'Вы не ввели слово' if [nil, ''].include?(word)
    word.split('')
  end

  def good?(letter)
    @letters.include?(letter) ||
      letter == 'е' && @letters.include?('ё') ||
      letter == 'ё' && @letters.include?('е') ||
      letter == 'и' && @letters.include?('й') ||
      letter == 'й' && @letters.include?('и')
  end

  def add_letter_to(letters, letter)
    letters << letter
  end

  def solved?
    (@letters - @good_letters).empty?
  end

  def repeated?(letter)
    good_letters.include?(letter) || bad_letters.include?(letter)
  end

  def won?
    @status == :won
  end

  def lost?
    @status == :lost || @errors >= MAX_ERRORS
  end

  def in_progress?
    @status == :in_progress
  end

  def max_errors
    MAX_ERRORS
  end

  def errors_left
    MAX_ERRORS - @errors
  end

  def next_step(letter)
    return if @status == :lost || @status == :won
    return if repeated?(letter)

    if good?(letter)
      add_letter_to(@good_letters, letter)

      case letter
      when 'е' then @good_letters << 'ё'
      when 'ё' then @good_letters << 'е'
      when 'и' then @good_letters << 'й'
      when 'й' then @good_letters << 'и'
      end

      @status = :won if solved?

    else
      add_letter_to(@bad_letters, letter)
      @errors += 1
      @status = :lost if lost?
    end
  end

  def ask_next_letter
    puts 'Введите следующую букву:'
    letter = ''
    letter = $stdin.gets.downcase.chomp while letter == ''
    next_step(letter)
  end

  attr_reader :letters, :good_letters, :bad_letters, :errors, :status
end
