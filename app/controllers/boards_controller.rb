class BoardsController < ApplicationController
  def new
    @board = Article.new
  end

  def create
    board = Article.create(board_params)
    redirect_to board_path(board)
  end

  def index
    @boards = Article.all
  end

  def show
    @board = Article.find(params[:id])
  end

  def edit
    @board = Article.find(params[:id])
  end

  def update
    board = Article.find(params[:id])
    board.update(board_params)
    redirect_to board_path(board)
  end
  
  def destroy
    board = Article.find(params[:id])
    board.delete
    redirect_to boards_path
  end

  private
  def board_params
    params.require(:article).permit(:name, :title, :body)
  end
end
