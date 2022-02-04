class PagesController < ApplicationController
  before_action :sign_in_required, only: %i[show]

  def index
  end

  def show
  end
end
