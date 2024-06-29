Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'users/new'
  root "static_pages#home"
  get  "/news",    to: "static_pages#news"
  get  "/about",   to: "static_pages#about"
  get  "/contact", to: "static_pages#contact"
  get  "/signup",  to: "users#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
  # resources :microposts,          only: [:create, :destroy]
  resources :microposts
  get '/microposts', to: 'static_pages#home'
end
