# frozen_string_literal: true

def declension(amount, one, few, many)
  if amount % 100 >= 11 && amount % 100 <= 14
    return many
  end
  if amount % 10 == 1 && amount % 100 != 11
    return one
  elsif amount % 10 >= 2 && amount % 10 <= 4
    return few
  else
    return many
  end
end

(1..300).each do |i|
  puts "#{i} апельсин#{declension(i, '', 'а', 'ов')}"
end
