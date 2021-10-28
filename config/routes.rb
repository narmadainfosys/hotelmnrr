Rails.application.routes.draw do

  resources :rooms
  get 'orders/index'
  resources :foods
  resources :posts
  resources :records
  resources :userorders

  get 'dogs/index'
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  
  devise_for :users
  resources :pages
  resources :orders
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # get 'cats/index'
  # get 'cat/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homes#index"

  resources :documents
end
