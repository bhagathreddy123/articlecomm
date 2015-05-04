Rails.application.routes.draw do

  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Ckeditor::Engine => '/ckeditor'
  get 'students/index_students'

  devise_for :users
  resources :articles do
  	resources :comments
  end
 # root 'recipes#index'
 resources :recipes do 
   collection do
     get	:food_preferences
     get :cuisines
     get :food_types
   end
 end 
 resources :games
 resources :players 
 resources :students do
  collection do
    get :index_students
    get :new_student
    post :create_student
  end
  member do
    get :show_student
    get :edit_student
    put :update_student
    delete :delete_student
  end
end
resource :calendar, only: [:show], controller: :calendar
root to: "calendar#show"

end
