Rails.application.routes.draw do

  #Index de tout le site
  root to: 'home#index'

  #Partie admin
  namespace :admin do
    resources :carousels
    resources :user, except: :index
    get '/users' => 'user#index', as: :admin_user_index
  end
  get '/admin' => 'admin#index', as: :admin_root

  #Différentes pages disponibles
  resources :magazines do
    resources :pages
  end

  resources :mangas do
    resources :chapters, except: :show do
      resources :pejis, except: :show
    end
  end

  get '/mangas/:manga_id/:id' => 'chapters#show', as: :chapter
  get '/mangas/:manga_id/:chapter_id/:id' => 'pejis#show', as: :peji


  resources :presentations
  resources :blog

  # Partie contact
  get '/contact', to: 'contacts#new', as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  #Login + paramétrage des membres de KD
  devise_for :users
  get 'user/create'
  get '/membres' => 'user#index', as: :membres
  get '/membre/:id' => 'user#show', as: :membre
  get '/user/:id/edit_password' => 'user#password', as: :change_password
  resources :user, :controller => 'user'


end
