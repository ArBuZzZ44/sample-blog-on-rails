class ArticlesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render action: 'new' #можно использовать redirect_to, но потеряеся переменная @article, то есть render не прерывает запрос
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.order('created_at DESC')
  end
             
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
