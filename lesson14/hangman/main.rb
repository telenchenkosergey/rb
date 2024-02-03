# frozen_string_literal: true

current_path = './' + File.dirname(__FILE__)

require "#{current_path}/game"
require "#{current_path}/result_printer"
require "#{current_path}/word_reader"

printer = ResultPrinter.new

reader = WordReader.new

word = reader.read_word_from("#{current_path}/data/words.txt")

hangman = Game.new(word)

while hangman.status.zero?
  printer.print_status(hangman)
  hangman.ask_next_letter
end

printer.print_status(hangman)
