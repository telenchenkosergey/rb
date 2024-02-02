# frozen_string_literal: true

# Bodybuilder class
class Bodybuilder
  def initialize
    @biceps = 0
    @triceps = 0
    @pectoral = 0
  end

  def pump(muscle)
    case muscle
    when 'biceps'
      @biceps += 1
    when 'triceps'
      @triceps += 1
    when 'pectoral'
      @pectoral += 1
    end
  end

  def info
    "Бицепс: #{@biceps}\nТрицепс: #{@triceps}\nГрудные: #{@pectoral}"
  end
end
