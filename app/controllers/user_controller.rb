class UserController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def new
    @user = User.new
  end

  def index

  end

  def edit

  end

  def show

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
    params.require(:user).permit(:username, :email, :password, :avatar, :is_femme, :date_naissance, :role)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
