Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :mentions, only: [:index]

  root to: "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
