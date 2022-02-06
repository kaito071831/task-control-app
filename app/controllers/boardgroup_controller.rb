class BoardgroupController < ApplicationController
  def index
    @group = current_user.boardgroups
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
