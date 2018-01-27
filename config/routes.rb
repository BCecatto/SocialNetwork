Rails.application.routes.draw do
  devise_for :users
  root 'user#index'


  get '/user/new', to: 'user#new'
  post '/user/create', to: 'user#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
