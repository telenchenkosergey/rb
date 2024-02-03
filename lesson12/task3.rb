# frozen_string_literal: true

require './person'
require './movie'

p1 = Person.new('Сергей', 'Васильевич', 35)
p2 = Person.new('Федор', 'Николаевич', 66)
p3 = Person.new('Раиса', 'Ивановна', 70)

m1 = Movie.new('Спиздили', 'Гай Ричи')
m2 = Movie.new('Большой Лебовски', 'Итан Коэн')
m3 = Movie.new('Девчата', 'Юрий Чулюкин')

p1.movie = m1
p2.movie = m2
p3.movie = m3

p1.info
p2.info
p3.info
