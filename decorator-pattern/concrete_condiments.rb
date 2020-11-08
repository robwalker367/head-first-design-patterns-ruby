require_relative 'condiment'

class Milk < Condiment
  def cost
    @beverage.cost + 0.20
  end

  def description
    @beverage.description + ", Milk"
  end
end

class Soy < Condiment
  def cost
    @beverage.cost + 0.25
  end

  def description
    @beverage.description + ", Soy"
  end
end

class Mocha < Condiment
  def cost
    @beverage.cost + 0.30
  end

  def description
    @beverage.description + ", Mocha"
  end
end