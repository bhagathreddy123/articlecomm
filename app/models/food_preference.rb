class FoodPreference < ActiveRecord::Base
has_many :recipes, :dependent => :destroy
end
