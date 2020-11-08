require_relative 'beverage'

class HouseBlend < Beverage
  def initialize
    @description = "House Blend Coffee"
  end

  def cost
    4
  end
end

class BlondeRoast < Beverage
  def initialize
    @description = "Blonde Roast Coffee"
  end

  def cost
    5
  end
end

class Espresso < Beverage
  def initialize
    @description = "Espresso Coffee"
  end

  def cost
    6
  end
end
