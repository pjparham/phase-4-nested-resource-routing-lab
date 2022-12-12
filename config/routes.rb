Rails.application.routes.draw do
  resources :users, only: [:show] do
    resources :items, only: [:show, :index, :create]
  end
  resources :items, only: [:index]
end
