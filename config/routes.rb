Rails.application.routes.draw do
  resources :weight_units
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'welcome/index'
  get "/pages/*id" => 'pages#show', as: :page, format: false

  resources :profiles

  root 'welcome#index'
end