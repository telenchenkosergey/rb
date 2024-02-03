# frozen_string_literal: true

# class for reading words
class WordReader
  def read_word_from(file_name)
    if File.exist?(file_name)
      f = File.new(file_name, 'r:UTF-8')
      content = f.readlines
      f.close
      content.sample.chomp
    else
      nil
    end
  end
end
