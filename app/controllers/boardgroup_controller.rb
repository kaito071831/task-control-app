class BoardgroupController < ApplicationController
  before_action :authenticate_user!
  def index
    @group = current_user.boardgroups
  end

  def show
    @board = Board.where(boardgroup_id: params[:id])
  end

  def new
    @group = Boardgroup.new
  end

  def create
    @group = Boardgroup.new(group_params)
    if @group.save
      @team = Team.new(user_id: current_user.id, boardgroup_id: @group.id)
      if @team.save
        redirect_to boardgroup_index_path, notice: "Success"
      else
        flash.now[:alert] = "Failed"
        render :new
      end
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

  def group_params
    params.require(:boardgroup).permit(:title)
  end
end
