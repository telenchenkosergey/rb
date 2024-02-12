# frozen_string_literal: true

# Read from files
class Reader
  attr_reader :name, :type, :temperature

  def initialize
    @name = ''
    @type = ''
    @temperature = []
  end

  def read_from(file_name)
    f = File.new(file_name, 'r:UTF-8')
    content = f.readlines
    f.close
    @name = content[0].chomp
    @type = content[1].chomp
    @temperature = content[2].scan(/-?\d+/)
  end
end
