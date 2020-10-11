require_relative 'fly_behaviors'
require_relative 'quack_behaviors'

class Duck
  def initialize(fly_behavior, quack_behavior)
    @fly_behavior = fly_behavior
    @quack_behavior = quack_behavior
  end

  def perform_fly
    @fly_behavior.fly
  end

  def perform_quack
    @quack_behavior.quack
  end

  def swim
    puts "All ducks float, even decoys!"
  end
end


class MallardDuck < Duck
  def initialize
    super(FlyWithWings.new, Quack.new)
  end

  def display
    puts "I'm a real Mallard Duck!"
  end
end

class ModelDuck < Duck
  def initialize
    super(FlyNoWay.new, Quack.new)
  end

  def display
    puts "I'm a wooden Model Duck!"
  end
end

class RubberDuck < Duck
  def initialize
    super(FlyNoWay.new, Squeak.new)
  end

  def display
    puts "I'm a Rubber Duck!"
  end
end