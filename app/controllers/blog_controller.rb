class BlogController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_blog, only: [:show, :edit, :update, :destroy]


  def index
    @titre = 'Tous les articles'
    @blog = Blog.all
  end

  def show
    @titre = @blog.titre
  end

  # GET /blog/new
  def new
    @titre = 'Nouvel article'
    @blog = Blog.new
  end

  def edit
    @titre = 'Editer '+@blog.titre
  end


  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to @blog, notice: 'Blog was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /blog/1
  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: 'Blog was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /blog/1
  def destroy
    @blog.destroy
    redirect_to blog_index_url, notice: 'Blog was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blog_params
      params.require(:blog).permit(:titre, :contenu)
    end
end
