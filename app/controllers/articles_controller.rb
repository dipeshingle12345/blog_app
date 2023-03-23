class ArticlesController < ApplicationController
   
  def index
    @articles = Article.all
    # Article.includes(:comments).limit(10)

  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit 
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def preview
    @article = Article.find(params[:id])
  end
 
  def search
    @article = Article.find(params[:id])
  end
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
