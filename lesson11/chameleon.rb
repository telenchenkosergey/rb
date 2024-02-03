# frozen_string_literal: true

# Chameleon
class Chameleon
  def change_color(color)
    "Теперь я #{color}"
  end
end

c = Chameleon.new
puts c.change_color 'красный'
puts c.change_color 'зеленый'
puts c.change_color 'синий'
