Rails.application.routes.draw do
 

  resources :articles do
  	resources :comments
  end
  root 'recipes#index'
  resources :recipes
end
