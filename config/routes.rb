Rails.application.routes.draw do
 

  devise_for :users
  resources :articles do
  	resources :comments
  end
  root 'recipes#index'
  resources :recipes do 
  	collection do
  	get	:food_preferences
  	get :cuisines
  	get :food_types
  	end
  end
end
