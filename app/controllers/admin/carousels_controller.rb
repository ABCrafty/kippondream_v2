class Admin::CarouselsController < ApplicationController
  before_action :authenticate_user!
  # before_action :check_role, only: :index
  before_action :set_admin_carousel, only: [:show, :edit, :destroy, :update]

  layout 'admin'

  # GET /admin/carousels
  def index
    @admin_carousels = Admin::Carousel.all
    @admin_carousel = Admin::Carousel.new
  end


  # POST /admin/carousels
  def create
    @admin_carousel = Admin::Carousel.new(admin_carousel_params)

    if @admin_carousel.save
      redirect_to :back, notice: 'Image ajoutée'
    else
      render :new
    end
  end

  def update
    if @admin_carousel.update(admin_carousel_params)
      redirect_to :back, notice: 'Image mise à jour'
    else
      render :edit
    end
  end

  # DELETE /admin/carousels/1
  def destroy
    @admin_carousel.destroy
    redirect_to admin_carousels_url, notice: 'Image supprimée'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_carousel
      @admin_carousel = Admin::Carousel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_carousel_params
      params.require(:admin_carousel).permit(:image, :description, :titre, :lien)
    end

=begin
    def check_role
      if current_user.role == 'Dieu'
        redirect_to admin_root_path, notice: 'GTFO NOOB'
      end
    end
=end

end
