# frozen_string_literal: true

current_path = './' + File.dirname(__FILE__)

require "#{current_path}/lib/game"
require "#{current_path}/lib/result_printer"
require "#{current_path}/lib/word_reader"

reader = WordReader.new

word = reader.read_word_from("#{current_path}/data/words.txt")

hangman = Game.new(word)

printer = ResultPrinter.new(hangman)

while hangman.in_progress?
  printer.print_status(hangman)
  hangman.ask_next_letter
end

printer.print_status(hangman)
