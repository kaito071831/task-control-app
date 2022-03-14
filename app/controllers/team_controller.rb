class TeamController < ApplicationController
  before_action :authenticate_user!

  def index
    @board = Boardgroup.find(params[:boardgroup_id])
    @team = current_user.teams.find_by(boardgroup: @board)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to boardgroup_url(params[:boardgroup_id]), notice: "Success"
    else
      flash.now[:alert] = "Failed"
      render :new
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @other_users = Team.where(boardgroup_id: @team.boardgroup_id).count.to_i
    if @other_users > 1
      if @team.destroy
        redirect_to boardgroup_index_url, notice: "Success"
      else
        redirect_to boardgroup_team_url(params[:boardgroup_id], params[:id]), notice: "Failed"
      end
    else
      redirect_to boardgroup_team_index_url(params[:boardgroup_id]), notice: "Make sure that there are at least two users who can see the board."
    end
  end

  private

  def team_params
    params.require(:team).permit(:user_id, :boardgroup_id)
  end

end
