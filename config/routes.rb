Rails.application.routes.draw do
  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/news'
  get  "static_pages/about"
  # root "application#hello"
end
