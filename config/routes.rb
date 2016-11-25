Rails.application.routes.draw do

  namespace :admin do
    resources :carousels
  end
  devise_for :users
  resources :scans
  resources :magazines
  resources :pages
  resources :mangas

  # Partie contact
  get '/contact', to: 'contacts#new', as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  root to: 'home#index'


  get '/admin' => 'admin#index', as: :admin_root


end
