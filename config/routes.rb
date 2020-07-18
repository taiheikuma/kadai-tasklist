Rails.application.routes.draw do
root to: 'toppages#index'

get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]

root to: 'tasks#index'

  resources :tasks
end
