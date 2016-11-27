class Admin::ArticlesController < ApplicationController
  before_action :set_admin_article, only: [:show, :edit, :update, :destroy]

  # GET /admin/articles
  def index
    @admin_articles = Admin::Article.all
  end

  # GET /admin/articles/1
  def show
  end

  # GET /admin/articles/new
  def new
    @admin_article = Admin::Article.new
  end

  # GET /admin/articles/1/edit
  def edit
  end

  # POST /admin/articles
  def create
    @admin_article = Admin::Article.new(admin_article_params)
    @admin_article.user = current_user
    if @admin_article.save
      redirect_to @admin_article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/articles/1
  def update
    if @admin_article.update(admin_article_params)
      redirect_to @admin_article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/articles/1
  def destroy
    @admin_article.destroy
    redirect_to admin_articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_article
      @admin_article = Admin::Article.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_article_params
      params.require(:admin_article).permit(:titre, :contenu)
    end
end
