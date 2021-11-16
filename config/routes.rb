Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars, only: %i[index new create] do
    resources :rentings, only: %i[new create]
  end
end
