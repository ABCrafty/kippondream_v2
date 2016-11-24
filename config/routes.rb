Rails.application.routes.draw do

  resources :scans
  resources :magazines
  resources :pages
  resources :mangas

  # Partie contact
  get '/contact', to: 'contacts#new', as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  root to: 'home#index'
end
