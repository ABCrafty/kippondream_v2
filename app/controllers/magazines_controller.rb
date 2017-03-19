class MagazinesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_magazine, only: [:show, :edit, :update, :destroy]

  def index
    @last = Magazine.last
    @magazines = Magazine.all
    @presentation = Presentation.first
    @titre = 'Tous les magazines'
  end

  def show
    @titre = @magazine.titre
    @page_number = @magazine.pages.order('page_number DESC').first
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
      @index = 0
      (params[:images] || []).each_with_index do |image, index|
        if index.even?
          @index += 1
        end
        @magazine.pages.create(image: image, page_number: @index)
      end
      redirect_to @magazine, notice: 'Magazine créé'
    else
      render :new
    end
  end

  def update
    if @magazine.update(magazine_params)
      if params[:images]
        @page_number = @magazine.pages.order('page_number DESC').first
        @last_page = @magazine.pages.where(page_number: @page_number.page_number)
        @index = 0
        (params[:images] || []).each_with_index do |image, index|
          if index == 0
            if @last_page.size == 1
              @magazine.pages.create(image: image, page_number: @page_number.page_number)
            end
          end

          # abort @last_page.inspect

          if index.even?
            @index += 1
          end

          @magazine.pages.create(image: image, page_number: @page_number.page_number + @index)
        end
      end
      redirect_to @magazine, notice: 'Magazine mit à jour'
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
    params.require(:magazine).permit(:titre, :apercu, :date_parution, :pair,
    :description, :banniere, :link_mangadraft, :sommaire)
  end

  def first_page

  end

end
