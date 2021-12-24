Rails.application.routes.draw do
  resources :foods
  resources :recipe_foods
  resources :recipes
  resources :users
  devise_for :models
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
