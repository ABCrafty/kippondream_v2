class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]

  def index
    @chapters = Chapter.all
  end

  def show
  end

  def new
    @chapter = Chapter.new
  end

  def edit
  end

  def create
    @chapter = Chapter.new(chapter_params)

    if @chapter.save
      (params[:images] || []).each_with_index do |image, index|
        @chapter.pejis.create(image: image, scan_number: index + 1)
        @chapter.manga = request.original_url.split('/').last.to_i
      end
      redirect_to @chapter, notice: 'Chapter was successfully created.'
    else
      render :new
    end
  end

  def update
    if @chapter.update(chapter_params)
      (params[:images] || []).each_with_index do |image, index|
        @chapter.pejis.create(image: image, scan_number: index + 1)
      end
      redirect_to @chapter, notice: 'Chapter was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @chapter.destroy
    redirect_to chapters_url, notice: 'Chapter was successfully destroyed.'
  end

  private

    def set_chapter
      @chapter = Chapter.friendly.find(params[:id])
    end

    def chapter_params
      params.require(:chapter).permit(:titre, :apercu)
    end
end
