# frozen_string_literal: true

# Post class
class Post
  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    post_types[type_index].new
  end
  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
  end

  def to_strings
  end

  def save
    f = File.new(file_name, 'w:UTF-8')
    to_strings.each { |item| f.puts item }
    f.close
  end

  def file_name
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
    "#{current_path}/#{file_name}"
  end
end
