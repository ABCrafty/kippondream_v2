class UserController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_user, only: [:show, :edit, :update, :password]
  before_action :check_user, only: [:edit, :password]

  def new
    @titre = 'Nouveau membre'
    @user = User.new
  end

  def index
    @titre = 'Membres'
    @users = User.all
  end

  def edit

  end

  def password
    @titre = 'Modifiez votre mot de passe'
  end

  def show
    @titre = @user.username
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_root_path, notice: 'Utilisateur créé'
    else
      render :action => 'new'
    end
  end

  def update
    if @user.update(user_params)
      redirect_to admin_root_path, notice: 'Profil mit à jour'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :avatar, :is_femme,
    :date_naissance, :role, :description)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def check_user
    if current_user.id != params[:id].to_i
      redirect_to membres_path, alert: 'Propriété privée.'
    end
  end

end
