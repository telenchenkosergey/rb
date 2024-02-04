# frozen_string_literal: true

def roll
  50.times do
    print rand(6) + 1
    sleep 0.02
    print "\b"
  end
end

roll
puts rand(6) + 1
