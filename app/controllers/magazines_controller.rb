class MagazinesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_magazine, only: [:show, :edit, :update, :destroy]

  def index
    @magazines = Magazine.all
  end

  def show
  end

  def new
    @magazine = Magazine.new
  end

  def edit
  end

  def create
    @magazine = Magazine.new(magazine_params)

    if @magazine.save
      if params[:images]
        (params[:image] || []).each_with_index do |image, index|
          @magazine.pages.create(image: image, page_number: index + 1)
      end
      redirect_to @magazine, notice: 'Magazine was successfully created.'
    else
      render :new
      end
    end
  end

  def update
    if @magazine.update(magazine_params)
      if params[:images]
        params[:images].each { |image|
          @magazine.pages.create(image: image)
        }
      end
      redirect_to @magazine, notice: 'Magazine was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @magazine.destroy
    redirect_to magazines_url, notice: 'Magazine was successfully destroyed.'
  end

  private

  def set_magazine
    @magazine = Magazine.friendly.find(params[:id])
  end

  def magazine_params
    params.require(:magazine).permit(:titre, :apercu)
  end

end
