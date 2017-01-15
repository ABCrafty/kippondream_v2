class ChaptersController < ApplicationController
  before_action :authenticate_user!, except: :show
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]

  def index
    @manga = Manga.find(params[:manga_id])
    @chapters = Chapter.all
  end

  def show
  end

  def new
    @manga = Manga.find_by(slug: params[:manga_id])
    @chapter = Chapter.new

  end

  def edit
    @manga = Manga.find_by(slug: params[:manga_id])
  end

  def create
    @manga = Manga.friendly.find(params[:manga_id])
    @chapter = Chapter.new(chapter_params)
    @chapter.manga = @manga
    @chapter.chapter_number = @manga.chapters.count + 1

    if @chapter.save
      (params[:images] || []).each_with_index do |image, index|
        @chapter.pejis.create(image: image, scan_number: index + 1)
      end
      redirect_to chapter_path(manga_id: @manga, id: @chapter.chapter_number), notice: 'Chapter was successfully created.'
    else
      render :new
    end
  end

  def update
    if @chapter.update(chapter_params)
      (params[:images] || []).each_with_index do |image, index|
        @chapter.pejis.create(image: image, scan_number: index + 1)
      end
      redirect_to manga_chapter_path(@manga, @chapter), notice: 'Chapter was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @chapter.destroy
    redirect_to :back, notice: 'Chapter was successfully destroyed.'
  end

  private
    def set_chapter
      @manga = Manga.find_by(slug: params[:manga_id])
      @chapter = @manga.chapters.find_by(chapter_number: params[:id])
    end

    def chapter_params
      params.require(:chapter).permit(:titre, :apercu)
    end
end
