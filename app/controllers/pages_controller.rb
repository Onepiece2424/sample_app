class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:show,:new]

  def index
    @pages = Page.all
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
      flash[:notice] = "ユーザーIDが「#{@page.id}」の情報を更新しました"
      redirect_to :pages
    else
      render 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = 'Worryを1つ削除しました'
    redirect_to :pages
  end
end
