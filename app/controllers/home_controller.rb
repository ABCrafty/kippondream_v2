class HomeController < ApplicationController
  def index
    @titre = 'Accueil'
    @diapos = Dir.glob('public/uploads/carousel/*')
  end


  def cgu

  end

  def blog
    
  end

end
