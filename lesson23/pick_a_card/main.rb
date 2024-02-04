# frozen_string_literal

values = %w[2 3 4 5 6 7 8 9 10 J Q K A]
suits = %w[Spades Diamonds Clubs Hearts]
deck = []

values.each do |value|
  suits.each { |suit| deck << "#{value} of #{suit}" }
end

puts deck.sample
