class BlogController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  layout 'admin', only: [:new, :edit]


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
    @blog.user = current_user
    if @blog.save
      redirect_to @blog, notice: 'Article créé'
    else
      render :new
    end
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: 'Article mis à jour'
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blog_index_url, notice: 'Article supprimé'
  end

  private
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:titre, :contenu, :user, :illu)
    end
end
