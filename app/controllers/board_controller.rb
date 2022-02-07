class BoardController < ApplicationController
  def show
    @todo_tasks = Task.where("(board_id = ?) AND (status_id = ?)", params[:id], 1)
  end

  def new
  end

  def edit
  end
end
