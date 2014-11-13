class PagesController < ApplicationController
	def home
		#require ' forecast_io'
		@temp = ForecastIO.forecast(42.36, -71.06).currently.temperature
	end
end
