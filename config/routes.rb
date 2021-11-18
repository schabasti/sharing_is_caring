Rails.application.routes.draw do
  get 'profiles/my_cars'
  devise_for :users
  root to: 'pages#home'
  resources :cars do
    resources :rentings, only: %i[new create show]
  end
  get "/my_cars", to: "profiles#my_cars"
  get "/my_rentings", to: "profiles#my_rentings"
end
