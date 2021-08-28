Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # get 'cats/index'
  # get 'cat/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "cats#index"

  resources :cats

end
