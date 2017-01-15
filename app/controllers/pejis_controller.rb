class PejisController < ApplicationController
  before_action :authenticate_user!, only: :show
  before_action :set_peji, only: [:show, :edit, :update, :destroy]

  def index
    @pejis = Peji.all
  end

  def show
    # @titre = @peji.chapter.titre
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
      @chapter = Chapter.find_by(chapter_number: params[:chapter_id])
      @peji = @chapter.pejis.find_by(scan_number: params[:id])
    end

    def peji_params
      params.require(:peji).permit(:image, :manga_id)
    end
end
