# frozen_string_literal: true

require './game'
require './result_printer'

printer = ResultPrinter.new

word = ARGV[0]

hangman = Game.new(word)

while hangman.status.zero?
  printer.print_status(hangman)
  hangman.ask_next_letter
end

printer.print_status(hangman)
