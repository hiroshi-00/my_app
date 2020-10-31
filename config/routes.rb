Rails.application.routes.draw do
  resources :admins
  get 'weapons_type/:id' => 'types#index'
  get 'categories/:id' => 'categories#index'

  resources :dresses
  resources :weapons
  devise_for :users
  root 'home#index'
  resources :posts do 
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
