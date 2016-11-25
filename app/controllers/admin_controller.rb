class AdminController < ApplicationController
  before_filter :authenticate_user!

  def index
    @titre = 'Administration'
  end

end
