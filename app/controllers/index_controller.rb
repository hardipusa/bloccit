class IndexController < ApplicationController
  def index
    @index = Index.all 
  end

  def show
    @index = Index.find(params[:id])
  end

  def new
  end

  def edit
  end

end






