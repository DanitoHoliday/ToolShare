class UsersController < ApplicationController

  def index
     @users = User.geocoded #returns flats with coordinates

    @markers = @users.map do |flat|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
