# frozen_string_literal: true

# Clothes collection class
class ClothesCollection
  attr_reader :types, :same_type_clothing

  def initialize(cloth_arr)
    @cc = cloth_arr
    @types = []
    @same_type_clothing = {}
  end

  def clothing_types
    @cc.each do |cloth|
      @types << cloth.type
      @types.uniq!
    end
  end

  def same_type_clothing
    @types.each do |type|
        @same_type_clothing[type] = []
    end
  end
end
