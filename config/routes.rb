Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'welcome/index'
  get "/pages/*id" => 'pages#show', as: :page, format: false

  root 'welcome#index'
end