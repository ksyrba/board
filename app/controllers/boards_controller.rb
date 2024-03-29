class BoardsController < ApplicationController
  before_action :set_target_board, only:[:show, :edit, :update, :destroy]

  def new
    @board = Article.new(flash[:board])
  end

  def create
    board = Article.create(board_params)
    if board.save
      flash[:notice] = "「#{board.title}」の掲示板を作成しました"
      redirect_to board_path(board)
    else
      @board = Article.new(flash[:board])
      render 'new'
    end
  end

  def index
    @boards = params[:tag_id].present? ? Tag.find(params[:tag_id]).articles : Article.all
    @boards = @boards.page(params[:page])
  end

  def show
    @comment = Comment.new(article_id: @board.id)
  end

  def edit
  end

  def update
    @board.update(board_params)
    redirect_to board_path(@board)
  end

  def destroy
    @board.destroy
    redirect_to boards_path, flash: { notice: "「#{@board.title}」の掲示板が削除されました" }
  end

  private
  def board_params
    params.require(:article).permit(:name, :title, :body, tag_ids: [])
  end

  def set_target_board
    @board = Article.find(params[:id])
  end
end
