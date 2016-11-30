class PejisController < ApplicationController
  before_action :set_peji, only: [:show, :edit, :update, :destroy]

  # GET /pejis
  def index
    @pejis = Peji.all
  end

  # GET /pejis/1
  def show
  end

  # GET /pejis/new
  def new
    @peji = Peji.new
  end

  # GET /pejis/1/edit
  def edit
  end

  # POST /pejis
  def create
    @peji = Peji.new(peji_params)

    if @peji.save
      redirect_to @peji, notice: 'Peji was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pejis/1
  def update
    if @peji.update(peji_params)
      redirect_to @peji, notice: 'Peji was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pejis/1
  def destroy
    @peji.destroy
    redirect_to :back, notice: 'Peji was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peji
      @peji = Peji.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def peji_params
      params.require(:peji).permit(:image, :manga_id)
    end
end
