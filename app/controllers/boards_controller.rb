class BoardsController < ApplicationController
  def new
    @board = Article.new
  end

  def create
    Article.create(board_params)
  end

  def index
    @boards = Article.all
  end

  def show
    @board = Article.find(params[:id])
  end

  private
  def board_params
    params.require(:article).permit(:name, :title, :body)
  end
end
