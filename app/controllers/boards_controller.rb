class BoardsController < ApplicationController
  def new
    @board = Article.new
    # binding.pry
  end

  def create
  end

  def index
  end
end
