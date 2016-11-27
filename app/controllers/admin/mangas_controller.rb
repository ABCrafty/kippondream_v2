class Admin::MangasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_admin_manga, only: [:show, :edit, :update, :destroy]

  def index
    @admin_mangas = Admin::Manga.all
  end

  def show
  end

  def new
    @admin_manga = Admin::Manga.new
  end

  def edit
  end

  def create
    @admin_manga = Admin::Manga.new(admin_manga_params)
    if @admin_manga.save
      if params[:images]
        params[:images].each { |image|
          @admin_manga.admin_scen.create(image: image)
        }
      end
      redirect_to @admin_manga, notice: 'Manga was successfully created.'
    else
      render :new
    end
  end

  def update
    if @admin_manga.update(admin_manga_params)
      if params[:images]
        params[:images].each { |image|
          @admin_manga.admin_scan.create(image: image)
        }
      end
      redirect_to @admin_manga, notice: 'Manga was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @admin_manga.destroy
    redirect_to admin_mangas_url, notice: 'Manga was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_manga
      @admin_manga = Admin::Manga.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_manga_params
      params.require(:admin_manga).permit(:titre, :thumbnail)
    end
end
