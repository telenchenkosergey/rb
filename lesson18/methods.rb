# frozen_string_literal: true

require 'net/http'

def get_random_regexp_string
  patterns = ['торф', 'миска', 'огонь', 'лиса', 'хор']
  pattern = patterns.sample
  letter = pattern.split('').sample
  pattern.gsub(letter, '.')
end

def word_exist?(word)
  url = "https://ru.wiktionary.org/wiki/#{word}"
  wiktionary_page = Net::HTTP.get(URI.parse(URI::Parser.new.escape(url))).force_encoding('UTF-8')

  if wiktionary_page =~ /Соответствий запросу не найдено/
    false
  else
    true
  end
end
