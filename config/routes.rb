Rails.application.routes.draw do
  

  resources :blogs do
  	resources :comments
  end
  devise_for :users

  root to:'welcomes#index'
  get '/comments/new', to: 'comments#new'
  post '/add_like', to: 'welcomes#add_like'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
