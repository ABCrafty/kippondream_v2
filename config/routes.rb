Rails.application.routes.draw do

  get 'user/new'

  get 'user/create'

  namespace :admin do
    resources :pages
    resources :magazines
    resources :scans
    resources :mangas
    resources :carousels
    resources :articles
  end

  devise_for :users

  resources :user, :controller => 'user'

  # Partie contact
  get '/contact', to: 'contacts#new', as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  root to: 'home#index'
  get '/blog' => 'home#index', as: :blog

  get '/admin' => 'admin#index', as: :admin_root


end
