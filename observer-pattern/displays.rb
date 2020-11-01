class SummaryDisplay
  attr_accessor :subject, :temperature, :pressure, :humidity

  def initialize(subject)
    @subject = subject
    @subject.add_observer(self)
  end

  def update
    if @subject.is_a?(WeatherData)
      @temperature = @subject.temperature
      @pressure = @subject.pressure
      @humidity = @subject.humidity
      display
    end
  end

  def display
    puts "Summary: #{@temperature}deg, #{@pressure}kpa, #{@humidity}g/kg"
  end
end

class CurrentConditionsDisplay
  attr_accessor :subject, :temperature, :humidity

  def initialize(subject)
    @subject = subject
    @subject.add_observer(self)
  end

  def update
    if @subject.is_a?(WeatherData)
      @temperature = @subject.temperature
      @humidity = @subject.humidity
      display
    end
  end

  def display
    puts "Current Conditions: #{@temperature}deg, #{@humidity}g/kg"
  end
end

class ForecastDisplay
  attr_accessor :subject, :pressure

  def initialize(subject)
    @subject = subject
    @subject.add_observer(self)
  end

  def update
    if @subject.is_a?(WeatherData)
      @pressure = @subject.pressure
      display
    end
  end

  def display
    puts "Forecast: pressure will increase to #{@pressure + 5}kpa."
  end
end