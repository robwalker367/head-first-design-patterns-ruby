require_relative 'weather_data'
require_relative 'displays'

class Main
  def self.run
    current_temp, current_pressure, current_humidity = 20, 100, 2

    subject = WeatherData.new
    subject.update_measurements(
      current_temp,
      current_pressure,
      current_humidity
    )

    forecast = ForecastDisplay.new(subject)
    summary = SummaryDisplay.new(subject)

    subject.update_measurements(
      current_temp + 2,
      current_pressure,
      current_humidity + 1
    )

    subject.remove_observer(summary)

    current_conditions = CurrentConditionsDisplay.new(subject)

    subject.update_measurements(
      current_temp,
      current_pressure + 10,
      current_humidity
    )
  end
end

Main.run