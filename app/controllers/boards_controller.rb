class BoardsController < ApplicationController
  def new
    @board = Article.new
  end

  def create
    @board = Article.create(board_params)
  end

  def index
    @boards = Article.all
  end

  private
  def board_params
    params.require(:article).permit(:name, :title, :body)
  end
end
