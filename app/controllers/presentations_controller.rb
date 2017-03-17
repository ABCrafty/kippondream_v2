class PresentationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_presentation, only: [:show, :edit, :update, :destroy]

  def index
    @presentations = Presentation.all
  end

  def show
  end

  def new
    @presentation = Presentation.new
  end

  def edit
  end

  def create
    @presentation = Presentation.new(presentation_params)

    if @presentation.save
      redirect_to @presentation, notice: 'Presentation was successfully created.'
    else
      render :new
    end
  end

  def update
    if @presentation.update(presentation_params)
      redirect_to admin_root_path, notice: 'Presentation mise à jour'
    else
      render :edit
    end
  end

  # DELETE /presentations/1
  def destroy
    @presentation.destroy
    redirect_to presentations_url, notice: 'Presentation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presentation
      @presentation = Presentation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def presentation_params
      params.require(:presentation).permit(:titre1, :contenu1, :titre2, :contenu2, :titre3, :contenu3)
    end
end
