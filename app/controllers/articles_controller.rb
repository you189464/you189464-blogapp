class ArticlesController < ApplicationController
  before_action :set_article, only: [ :show, :edit, :update ]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article), notice: "記事が保存されました。"
    else
      flash.now[:error] = "記事の保存に失敗しました。"
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article), notice: "更新できました"
    else
      flash.now[:error] = "更新できませんでした"
      render :edit
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy!
    redirect_to root_path, status: :see_other, notice: "記事を削除しました"
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
