Rails.application.routes.draw do
  resources :magazines
  resources :pages
  resources :mangas
  root to: 'home#index'
end
