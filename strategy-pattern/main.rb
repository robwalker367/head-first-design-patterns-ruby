require_relative 'ducks'

class Main
  def self.run
    ducks = [MallardDuck.new, ModelDuck.new, RubberDuck.new]
    duck_methods = [:display, :perform_quack, :perform_fly]
    ducks.each do |duck|
      duck_methods.each do |duck_method|
        duck.send(duck_method)
      end
    end
  end
end

Main.run