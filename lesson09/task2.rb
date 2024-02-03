# frozen_string_literal: true

def cutter(arr)
  puts 'Вот такая палка колбасы у нас есть.'
  puts arr.to_s
  puts 'Сколько первых элементов вам отрезать?'
  n = $stdin.gets.to_i
  puts 'Вот ваша колбаса:'
  if n >= arr.length
    return arr.to_s
  else
    arr1 = arr.pop(arr.length - n)
    arr -= arr1
    return arr.to_s
  end
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
puts cutter(arr)
