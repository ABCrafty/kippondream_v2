class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
    @titre = 'Administration'
  end

end
