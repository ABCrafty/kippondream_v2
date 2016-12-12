class HomeController < ApplicationController
  before_action :set_home, only: [:update, :edit]


  def edit

  end

  def index
    @titre = 'Accueil'
    @diapos = Admin::Carousel.all
    @blogs = Blog.all
    @presentation = Presentation.first
  end

  def cgu
  end


end
