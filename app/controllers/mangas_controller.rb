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
    @titre = 'Nouveau chapitre '
    @manga = Manga.new
  end

  def edit
    @titre = 'Modifier '+@manga.titre
  end

  def create
    @manga = Manga.new(manga_params)
    @manga.user = current_user

    if @manga.save

      if params[:images]
        (params[:images] || []).each_with_index do |image, index|
          @manga.pejis.create(image: image, scan_number: index + 1)
        end
        redirect_to @manga, notice: 'Manga créé'
      else
        render :new
      end
    end
  end

  def update
    if @manga.update(manga_params)
      if params[:images]
        (params[:images] || []).each_with_index do |image, index|
          @manga.pejis.create(image: image, scan_number: index + 1)
        end
      end
      redirect_to @manga, notice: 'Manga mis à jour'
    else
      render :edit
    end
  end

  def destroy
    @manga.destroy
    redirect_to mangas_url, notice: 'Manga supprimé'
  end

  private

  def set_manga
    @manga = Manga.friendly.find(params[:id])
  end

  def manga_params
    params.require(:manga).permit(:titre, :apercu, :user_id, :description).merge(user_id: current_user)
  end


end
