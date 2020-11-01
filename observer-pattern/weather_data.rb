require_relative 'observable'

class WeatherData < Observable
  attr_accessor :temperature, :pressure, :humidity

  def measurements_changed
    @changed = true
    notify_observers
  end

  def update_measurements(temperature, pressure, humidity)
    @temperature = temperature
    @pressure = pressure
    @humidity = humidity
    measurements_changed
  end
end