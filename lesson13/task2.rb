# frozen_string_literal: true

def draw(part)
  file_path = "./data/#{part}.txt"
  if File.exist?(file_path)
    f = File.new(file_path, 'r:UTF-8')
    content = f.readlines
    f.close
    puts content.sample
  else
    puts 'File is not found'
  end
end

draw('forehead')
draw('eyes')
draw('nose')
draw('mouth')
