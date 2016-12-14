class PejisController < ApplicationController
  before_action :set_peji, only: [:show, :edit, :update, :destroy]

  def index
    @pejis = Peji.all
  end

  def show
    @titre = @peji.manga.titre
  end

  def new
    @peji = Peji.new
  end

  def edit
  end

  def create
    @peji = Peji.new(peji_params)

    if @peji.save
      redirect_to @peji, notice: 'Peji was successfully created.'
    else
      render :new
    end
  end

  def update
    if @peji.update(peji_params)
      redirect_to @peji, notice: 'Peji was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @peji.destroy
    redirect_to pejis_url, notice: 'Peji was successfully destroyed.'
  end

  private

    def set_peji
      @manga = Manga.find_by(slug: params[:manga_id])
      @peji = @manga.pejis.find_by(scan_number: params[:id])
    end

    def peji_params
      params.require(:peji).permit(:image, :manga_id)
    end
end
