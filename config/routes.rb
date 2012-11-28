Servicedemo::Application.routes.draw do
  get "instances/home"
  get "instances/help"
  get "home/index"
  match '/help', to: 'instances#help'
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
