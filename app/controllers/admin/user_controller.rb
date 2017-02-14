class Admin::UserController < ApplicationController
  before_action :set_admin_user, except: :index

  def index
    @admin_users = User.all
  end

  def show
  end

  def edit
  end

  private

  def set_admin_user
    @admin_user = User.find(params[:id])
  end
end
