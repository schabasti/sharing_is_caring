Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars, only: %i[index new create show] do
    resources :rentings, only: %i[new create show]
  end

  get "/my_rentings", to: "profiles#my_rentings"
end
