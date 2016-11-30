class HomeController < ApplicationController


  def index
    @titre = 'Accueil'
    @diapos = Admin::Carousel.all
    @blogs = Blog.all
  end

  def cgu
  end


end
