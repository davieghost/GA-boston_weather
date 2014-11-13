class PagesController < ApplicationController
	def home

		## first 'method' of achieving the API query
		##########################################################################
		#@temp = ForecastIO.forecast(42.36, -71.06).currently.temperature

		## this 'method' references the forcast_query.rb query in the queries dir
		##########################################################################
		boston_weather = ForecastQuery.new(42.36, -71.06)
		maine_weather = ForecastQuery.new(45.25, -69.44)
		vermont_weather = ForecastQuery.new(44.55, -72.57)
		newhampshire_weather = ForecastQuery.new(43.19, -71.57)
		rhodeisland_weather = ForecastQuery.new(41.58, -71.47)
		connecticut_weather = ForecastQuery.new(41.60, -73.08)

		@vermont_temp = vermont_weather.temperature
		@newhampshire_temp = newhampshire_weather.temperature
		@rhodeisland_temp = rhodeisland_weather.temperature
		@connecticut_temp = connecticut_weather.temperature
		@boston_temp = boston_weather.temperature
		@maine_temp = maine_weather.temperature
		
		
		@maine_temp_time = maine_weather.temp_at_time(300)
		@vermont_temp_time = vermont_weather.temp_at_time(300)
		@newhampshire_temp_time = newhampshire_weather.temp_at_time(300)
		@rhodeisland_temp_time = rhodeisland_weather.temp_at_time(300)
		@connecticut_temp_time = connecticut_weather.temp_at_time(300)


	end
	def hate_it
		#@five_minutes_later = boston_weather.temp_at_time(300)
		boston_weather = ForecastQuery.new(42.36, -71.06)
		@boston_temp_time = boston_weather.temp_at_time(300)
	end
	def love_it
		
	end
end
