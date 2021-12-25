Rails.application.routes.draw do
  get 'general_shopping_list/index'
  root to: 'foods#index'

  devise_for :users
  resources :foods

  resources :recipes do
    resources :recipe_foods, only: %i[new]
  end

  resources :recipe_foods, only: %i[edit update destroy create]

  get 'shopping_list', to: 'users#show'
  get 'public_recipes', to: 'recipes#public_recipes'
  get 'general_shopping_list', to: 'general_shopping_lists#index', as: 'general_shopping_list'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
