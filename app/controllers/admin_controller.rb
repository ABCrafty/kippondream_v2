class AdminController < ApplicationController
  before_action :authenticate_user!

  layout 'admin'

  def index
    @titre = 'Administration'
  end

end
