Rails.application.routes.draw do
  resources :reviews
  resources :movies do
    resources :reviews, except: [:show, :index]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'movies#index'
end
