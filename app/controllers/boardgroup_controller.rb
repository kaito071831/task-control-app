class BoardgroupController < ApplicationController
  before_action :authenticate_user!
  def index
    @group = current_user.boardgroups
  end

  def show
    @board = Board.where(boardgroup_id: params[:id])
  end

  def new
    @boardgroup = Boardgroup.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
