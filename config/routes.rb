Rails.application.routes.draw do
  resources :scans
  resources :magazines
  resources :pages
  resources :mangas
  root to: 'home#index'
end
