class MagazinesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_magazine, only: [:show, :edit, :update, :destroy]

  def index
    @magazines = Magazine.all
    @titre = 'Tous les magazines'
  end

  def show
    @titre = @magazine.titre
  end

  def new
    @magazine = Magazine.new
    @titre = 'Nouveau magazine'
  end

  def edit
    @titre = 'Modifier '+@magazine.titre
  end

  def create
    @magazine = Magazine.new(magazine_params)

    if @magazine.save
      (params[:images] || []).each_with_index do |image, index|
        @magazine.pages.create(image: image, page_number: index + 1)
      end
      redirect_to @magazine, notice: 'Magazine créé'
    else
      render :new
    end
  end

  def update
    if @magazine.update(magazine_params)
      if params[:images]
        (params[:images] || []).each_with_index do |image, index|
          @magazine.pages.create(image: image, page_number: index + 1)
        end
      end
      redirect_to @magazine, notice: 'Magazine mis à jour'
    else
      render :edit
    end
  end

  def destroy
    @magazine.destroy
    redirect_to magazines_url, notice: 'Magazine supprimé'
  end

  private

  def set_magazine
    @magazine = Magazine.friendly.find(params[:id])
  end

  def magazine_params
    params.require(:magazine).permit(:titre, :apercu)
  end

end
