class HomeController < ApplicationController
  before_action :set_home, only: [:update, :edit]

  def index
    @titre = 'Accueil'
    @diapos = Admin::Carousel.all
    @blogs = Blog.all
    @manga = Manga.all
    @chapters = Chapter.all
    @presentation = Presentation.first
  end

  def cgu
  end


end
