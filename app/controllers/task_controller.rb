class TaskController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def new
    @board = Board.find(params[:board_id])
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to action: "index"
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail, :dead_line, :status_id).merge(board_id: params[:board_id])
  end
end
