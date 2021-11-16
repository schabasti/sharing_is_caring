Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars, only: [:index] do
    resources :rentings, only: %i[new create]
  end
end
