class TaskController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @statuses = Status.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to boardgroup_board_path(params[:boardgroup_id], @task.board_id), notice: "Success"
    else
      flash.now[:alert] = "Failed"
      render :new
    end
  end

  def edit
    
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail, :dead_line, :status_id, :board_id)
  end
end
