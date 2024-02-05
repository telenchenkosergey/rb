# frozen_string_literal: true

food = {
  :milk => 2,
  :bread => 1,
  :tomato => 3,
  :water => 1
}

household = {
  :soap => 3,
  :washing_powder => 2,
  :toilet_paper => 3
}

goods = food.merge(household)
puts goods
