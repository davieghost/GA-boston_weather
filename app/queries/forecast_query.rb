class ForecastQuery
	def initialize(lat, long)
		@long = long
		@lat = lat
	end
	def current_weather
		#ForecastIO.forecast(42.36, -71.06).currently
		ForecastIO.forecast(@lat, @long).currently
	end
	def temperature
		current_weather.temperature
	end
	def temp_at_time(seconds)
		ForecastIO.forecast(@lat, @long, time: Time.now.to_i + seconds).currently.temperature
	end

end	