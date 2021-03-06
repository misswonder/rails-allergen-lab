Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :destroy]
  post '/search', to: 'recipes#search'
  # post '/search', to: 'recipes#index'
end
