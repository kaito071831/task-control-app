class TeamController < ApplicationController
  def show
    @teams = Team.where(boardgroup_id: params[:boardgroup_id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to boardgroup_path(params[:boardgroup_id]), notice: "Success"
    else
      flash.now[:alert] = "Failed"
      render :new
    end
  end

  def destroy
  end

  private

  def team_params
    params.require(:team).permit(:user_id, :boardgroup_id)
  end
end
