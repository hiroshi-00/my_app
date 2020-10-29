Rails.application.routes.draw do
  resources :admins
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'weapons_type/:id' => 'types#index'
  get 'categories/:id' => 'categories#index'

  resources :dresses
  resources :weapons
  devise_for :users
  root 'home#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
