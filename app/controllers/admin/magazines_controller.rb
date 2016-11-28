class Admin::MagazinesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_admin_magazine, only: [:show, :edit, :update, :destroy]

  layout 'admin'

  # GET /admin/magazines
  def index
    @admin_magazines = Admin::Magazine.all
  end

  # GET /admin/magazines/1
  def show
  end

  # GET /admin/magazines/new
  def new
    @admin_magazine = Admin::Magazine.new
  end

  # GET /admin/magazines/1/edit
  def edit
  end

  # POST /admin/magazines
  def create
    @admin_magazine = Admin::Magazine.new(admin_magazine_params)

    if @admin_magazine.save
      if params[:images]
        params[:images].each { |image|
          @admin_magazine.admin_pages.create(image: image)
        }
      end
      redirect_to @admin_magazine, notice: 'Magazine was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/magazines/1
  def update
    if @admin_magazine.update(admin_magazine_params)
      if params[:images]
        params[:images].each { |image|
          @admin_magazine.admin_pages.create(image: image)
        }
      end
      redirect_to @admin_magazine, notice: 'Magazine was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/magazines/1
  def destroy
    @admin_magazine.destroy
    redirect_to admin_magazines_url, notice: 'Magazine was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_magazine
      @admin_magazine = Admin::Magazine.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_magazine_params
      params.require(:admin_magazine).permit(:titre, :thumbnail)
    end
end
