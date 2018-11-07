Rails.application.routes.draw do
  root 'books#index'
  devise_for :users
  resources :rates, only: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
    resources :rates, only: :create
  end
end
