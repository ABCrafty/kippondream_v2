Rails.application.routes.draw do

=begin
=end
  #Index de tout le site
  root to: 'home#index'

  #Partie admin
  namespace :admin do
    resources :carousels
  end
  get '/admin' => 'admin#index', as: :admin_root

  #Différentes pages disponibles

  resources :magazines do
    resources :pages
  end

=begin
  resources :mangas do
    namespace :manga do
      resources :manga/:pejis
    end
  end
=end
  resources :blog

  # Partie contact
  get '/contact', to: 'contacts#new', as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts

  #Login + paramétrage des membres de KD
  devise_for :users
  get 'user/new'
  get 'user/create'
  resources :user, :controller => 'user'

  #Permet de faire fonctionner CKEditor
  mount Ckeditor::Engine => '/ckeditor'

end
