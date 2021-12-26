class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:show]

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
  end

  def update
  end

  def destroy
  end
end
