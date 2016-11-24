class MangasController < ApplicationController
  before_action :set_manga, only: [:show, :edit, :update, :destroy]

  # GET /mangas
  def index
    @mangas = Manga.all
    @titre = 'Mangas'
  end

  # GET /mangas/1
  def show
    @titre = @manga.titre
  end

  # GET /mangas/new
  def new
    @manga = Manga.new
    @titre = 'Nouveau manga'
  end

  # GET /mangas/1/edit
  def edit
    @titre = 'Modifier '+ @manga.titre
  end

  # POST /mangas
  def create
    @manga = Manga.new(manga_params)

    if @manga.save
      if params[:images]
        params[:images].each { |image|
          @manga.scans.create(image: image)
        }
      end
      redirect_to @manga, notice: 'Manga was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mangas/1
  def update
    if @manga.update(manga_params)
      if params[:images]
        params[:images].each { |image|
          @manga.scans.create(image: image)
        }
      end
      redirect_to @manga, notice: 'Manga was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mangas/1
  def destroy
    @manga.destroy
    redirect_to mangas_url, notice: 'Manga was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manga
      @manga = Manga.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def manga_params
      params.require(:manga).permit(:titre, :thumbnail)
    end
end
