class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def index
    @pages = Page.all
  end

  def show
    @titre = @page.magazine.titre.to_s+ ' - page '+@page.page_number.to_s
  end

  def new
    @page = Page.new
  end

  def edit
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to @page, notice: 'Page was successfully created.'
    else
      render :new
    end
  end

  def update
    if @page.update(page_params)
      redirect_to @page, notice: 'Page was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @page.destroy
    redirect_to :back, notice: 'Page was successfully destroyed.'
  end

  private

  def magazine

  end

  def set_page
    @magazine = Magazine.find_by(slug: params[:magazine_id])
    @page = @magazine.pages.find_by(page_number: params[:id])
  end

  def page_params
    params.require(:page).permit(:titre, :apercu, :page_number)
  end

end
