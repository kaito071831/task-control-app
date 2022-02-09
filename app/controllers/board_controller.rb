class BoardController < ApplicationController
  def show
    @todo_tasks = Task.where("(board_id = ?) AND (status_id = ?)", params[:id], 1)
    @do_tasks = Task.where("(board_id = ?) AND (status_id = ?)", params[:id], 2)
    @finish_tasks = Task.where("(board_id = ?) AND (status_id = ?)", params[:id], 3)
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boardgroup_url(@board.boardgroup_id), notice: "Success"
    else
      flash.now[:alert] = "Failed"
      render :new
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    if @board.update(board_params)
      redirect_to boardgroup_url(params[:boardgroup_id]), notice: "Success"
    else
      flash.now[:alert] = "Failed"
      render :edit
    end
  end

  def destroy
  end

  private

  def board_params
    params.require(:board).permit(:title, :boardgroup_id)
  end
end
