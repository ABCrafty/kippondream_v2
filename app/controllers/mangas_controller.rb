class MangasController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_manga, only: [:show, :edit, :update, :destroy]

  def index
    @titre = 'Tous les mangas'
    @mangas = Manga.all
  end

  def show
  end

  def new
    @titre = 'Nouveau chapitrerake '
    @manga = Manga.new
  end

  def edit
  end

  def create
    @manga = Manga.new(manga_params)

    if @manga.save
      if params[:images]
        params[:images].each { |image|
          @manga.pejis.create(image: image)
        }
      end
      redirect_to @manga, notice: 'Manga was successfully created.'
    else
      render :new
    end
  end

  def update
    if @manga.update(manga_params)
      if params[:images]
        params[:images].each { |image|
          @manga.scan.create(image: image)
        }
      end
      redirect_to @manga, notice: 'Manga was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @manga.destroy
    redirect_to mangas_url, notice: 'Manga was successfully destroyed.'
  end

  private

  def set_manga
    @manga = Manga.friendly.find(params[:id])
  end

  def manga_params
    params.require(:manga).permit(:titre, :apercu)
  end

end
