# frozen_string_literal: true

amount = ARGV[0].to_i
amount = 10 if [nil, 0].include?(amount)

amount.times do
  time = Time.now
  puts time
  sleep 1
end
