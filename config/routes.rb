Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "products#index"

  resources :products
  resources :purchases
  resources :purchased_products

  devise_scope :user do
      resources :users
      get "signup", to: "devise/registrations#new", as: :sign_up
      get "signin", to: "devise/sessions#new", as: :sign_in
      delete "signout", to: "devise/sessions#destroy", as: :sign_out
      put "update", to: "users#update", as: :update
    end
end
