class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :new]

  def index
    @pages = Page.all
    flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(params.require(:page).permit(:date, :worry, :reason, :approach))
    if @page.save
      redirect_to :pages
    else
      render "new"
    end
  end

  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(params.require(:page).permit(:date, :worry, :reason, :approach))
      flash[:notice] = "「Worry」の情報を更新しました"
      redirect_to :pages
    else
      render 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = 'Worryを1つ解決しました!!'
    redirect_to :pages
  end

  def description
  end
end
