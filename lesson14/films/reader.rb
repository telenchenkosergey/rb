# frozen_string_literal: true

# Reader from file class
class Reader
  attr_reader :name, :director, :year

  def initialize(file_name)
    return unless File.exist?(file_name)

    f = File.new(file_name, 'r:UTF-8')
    content = f.readlines
    f.close
    @name = content[0].chomp
    @director = content[1].chomp
    @year = content[2].chomp
  end
end
