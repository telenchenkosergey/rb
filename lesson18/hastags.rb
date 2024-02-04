# frozen_string_literal: true

# pattern = '#[\wа-яА-Я-]+'

hashtags = str.scan(/#[\wа-яА-Я-]+/)
puts "Нашли вот такие хэштеги:"
hashtags.each { |i| puts i}
