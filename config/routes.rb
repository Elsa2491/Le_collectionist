Rails.application.routes.draw do
  devise_for :users
  resources :shops, only: [:index, :show, :edit, :update]
  root to: 'shops#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end