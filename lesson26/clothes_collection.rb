# frozen_string_literal: true

# Clothes collection class
class ClothesCollection
  attr_reader :types, :same_type_clothing

  def initialize
    @types = clothing_types()
  end

  def clothing_types(arr)
    types = []
    arr.each do |cloth|
      types << cloth.type
      types.uniq!
    end
    types
  end

  def same_type_clothing(arr)
    arr.each do |cloth|
      if !@same_type_clothing.has_key?(cloth.type)
        @same_type_clothing[cloth.type] = []
        @same_type_clothing[cloth.type] << cloth
      else
        @same_type_clothing[cloth.type] << cloth
      end
    end
  end
end
