class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception
	before_filter :sidebar_values
	helper_method :sidebar_values
	def sidebar_values
		@food_preferences = FoodPreference.all
		@food_types = FoodType.all
		@cuisines = Cuisine.all
	end
end
