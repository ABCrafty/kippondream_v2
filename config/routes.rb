Rails.application.routes.draw do

  namespace :admin do
    resources :pages
  end
  namespace :admin do
    resources :magazines
  end
  namespace :admin do
    resources :scans
  end
  namespace :admin do
    resources :mangas
  end
  namespace :admin do
    resources :carousels
  end
  devise_for :users

  # Partie contact
  get '/contact', to: 'contacts#new', as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  root to: 'home#index'


  get '/admin' => 'admin#index', as: :admin_root


end
