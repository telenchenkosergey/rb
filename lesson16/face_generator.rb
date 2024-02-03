# frozen_string_literal: true

def draw(part)
  current_path = "./#{File.dirname(__FILE__)}"
  file_path = "#{current_path}/data/#{part}.txt"
  if File.exist?(file_path)
    f = File.new(file_path, 'r:UTF-8')
    content = f.readlines
    f.close
    content.sample
  else
    'File is not found'
  end
end

time = Time.now
file_name = "face_#{time.strftime('%Y-%m-%d_%H:%M:%S')}"
file = File.new(file_name, 'a:UTF-8')
file.puts draw('forehead')
file.puts draw('eyes')
file.puts draw('nose')
file.puts draw('mouth')
file.close
