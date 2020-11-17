Rails.application.routes.draw do
  root 'home#index'
  resources :admins
  resources :dresses
  resources :weapons
  get 'weapons_type/:id' => 'types#index'
  get 'categories/:id' => 'categories#index'
  devise_for :users, :controllers => {
   :registrations => 'users/registrations',
   :sessions => 'users/sessions'
  }
  resources :users
  resources :posts do 
    resources :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
