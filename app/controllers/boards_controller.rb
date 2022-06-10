class BoardsController < ApplicationController
  def new
    @board = Article.new
  end

  def create
    Board.create(board_params)
  end

  def index
  end
  
  private
  def board_params
    params.require(:board).permit(:name, :title, :body)
  end
end
