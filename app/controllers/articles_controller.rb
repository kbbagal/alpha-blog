class ArticlesController < ApplicationController
  before_action :get_article, only:[:show, :destroy, :edit, :update]
  before_action :get_article_params, only:[:create, :update]
  before_action :requires_user

  def index
    @articles = current_user.articles
  end
  
  def show
  end

  def new
    @article = Article.new
  end

  def create
    #article_params = get_article_params
    article = Article.new
    article.title = @article_params[:title]
    article.description = @article_params[:description]
    article.user = current_user
    if article.save
      flash[:notice] = "New article created"
    else
      flash[:alert] = "Error creating article"
    end
    redirect_to :articles
  end

  def edit
  end

  def update
    @article.title = @article_params[:title]
    @article.description = @article_params[:description]
    @article.user = current_user
    if @article.save
      flash[:notice] = "Article edited"
    else
      flash[:alert] = "Error editing article"
    end
    redirect_to :articles
  end

  def destroy
    flash[:notice] = "Article deleted"
    redirect_to :articles if @article.destroy
  end

  private

  def get_article
    @article = Article.find(params[:id])
  end

  def get_article_params
    @article_params = params.require(:article).permit(:title, :description)
  end
end
