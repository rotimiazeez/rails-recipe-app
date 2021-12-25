Rails.application.routes.draw do
  devise_for :users
  root to: "foods#index"
  resources :foods, only: [:index, :show, :create, :new, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
