class TaskController < ApplicationController
  before_action :authenticate_user!

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
      redirect_to boardgroup_board_url(params[:boardgroup_id], @task.board_id), notice: "Success"
    else
      flash.now[:alert] = "Failed"
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    @statuses = Status.all
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to boardgroup_board_task_url(params[:boardgroup_id], params[:board_id], params[:id]), notice: "Success"
    else
      flash.now[:alert] = "Failed"
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to boardgroup_board_url(params[:boardgroup_id], params[:board_id]), notice: "Success"
    else
      flash.now[:alert] = "Failed"
      render :show
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail, :dead_line, :status_id, :board_id)
  end
end
