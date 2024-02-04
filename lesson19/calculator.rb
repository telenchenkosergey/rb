# frozen_string_literal: true

def calc(num1, num2, operation)
  case operation
  when '+'
    num1 + num2
  when '-'
    num1 - num2
  when '*'
    num1 * num2
  when '/'
    num1 / num2
  end
end

puts 'Первое число:'
num1 = $stdin.gets.to_i

puts 'Второе число:'
num2 = $stdin.gets.to_i

puts 'Выберите операцию (+ - * /)'
operation = $stdin.gets.chomp

puts 'Результат:'
begin
  puts calc(num1, num2, operation)
rescue ZeroDivisionError
  puts 'На ноль делить нельзя'
end
