# frozen_string_literal

values = %w[2 3 4 5 6 7 8 9 10 J Q K A]
suits = ["\u2660", "\u2665", "\u2666", "\u2663"]
deck = []

values.each do |value|
  suits.each { |suit| deck << "#{value} #{suit.encode('utf-8')}" }
end

puts deck.sample
