class HomeController < ApplicationController
  def index
    @titre = 'Accueil'
    @diapos = Admin::Carousel.all
  end

  def cgu

  end

  def blog
    @titre = 'Blog'
  end

end
