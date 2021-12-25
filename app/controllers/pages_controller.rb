class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
