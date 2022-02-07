class BoardController < ApplicationController
  def show
    @todo_tasks = Task.where("(board_id = ?) AND (status_id = ?)", params[:id], 1)
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boardgroup_path(@board.boardgroup_id), notice: "Success"
    else
      flash.now[:alert] = "Failed"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def board_params
    params.require(:board).permit(:title, :boardgroup_id)
  end
end
