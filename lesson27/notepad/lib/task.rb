# frozen_string_literal: true

# Task class
class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
  end

  def to_strings
  end
end
