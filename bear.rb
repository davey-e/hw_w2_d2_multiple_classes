class Bear

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def roar
    return "Roar"
  end

  def food_count
    return @stomach.length
  end
end
