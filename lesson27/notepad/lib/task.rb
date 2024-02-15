# frozen_string_literal: true

require 'date'

# Task class
class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts 'Что нужно сделать?'
    @text = $stdin.gets.chomp
    puts 'К какому числу нужно сделать? (ДД.ММ.ГГГГ)'
    input = $stdin.gets.chomp
    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y-%m-%d, %H:%M:%S')}\n\r"
    deadline = "Срок выполнения: #{@due_date}"
    [deadline, @text, time_string]
  end
end
