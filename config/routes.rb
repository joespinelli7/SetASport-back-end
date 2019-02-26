Rails.application.routes.draw do
  # resources :user_courts
  # resources :courts
  # resources :users

  resources :users, only: [:index, :show]
  post '/signin', to: 'users#signin'
  resources :courts, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
