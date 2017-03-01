class MangasController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_manga, only: [:show, :edit, :update, :destroy]


  def index
    @titre = 'Mangas'
    @pair = Manga.where(:pair => true)
    @impair = Manga.where(:pair => false)
  end

  def show
    @titre = @manga.titre
  end

  def new
    @titre = 'Nouveau manga'
    @manga = Manga.new
  end

  def edit
    @titre = 'Modifier '+@manga.titre
  end

  def create
    @manga = Manga.new(manga_params)

    if @manga.save
      @manga.users.push(current_user)
      redirect_to @manga, notice: 'Manga was successfully created.'
    else
      render :new
    end
  end

  def update
    if @manga.update(manga_params)
      if @manga.users.empty?
        @manga.users.push(current_user)
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
      params.require(:manga).permit(:titre, :description, :apercu, :banniere, :pair, :date_parution, :user_ids =>[])
    end
end
