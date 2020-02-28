class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

end
