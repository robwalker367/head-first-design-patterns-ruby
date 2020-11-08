require_relative 'concrete_beverages'
require_relative 'concrete_condiments'

class Main
  def self.run
    beverage = HouseBlend.new
    puts beverage.description + " $" + beverage.cost.to_s

    beverage2 = Mocha.new(
      Mocha.new(
        Soy.new(
          Espresso.new
        )
      )
    )
    puts beverage2.description + " $" + beverage2.cost.to_s
  end
end

Main.run