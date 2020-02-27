class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index ]
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @tools = Tool.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @tools = Tool.all
    end

    users = @tools.map { |tool| tool.user}
    @markers = users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @reservation = Reservation.new
    # user = @tool.user
    # @markers = user(lat: user.latitude, lng: user.longitude)
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    if @tool.save
      redirect_to tool_path(@tool)
    else
      render :template => 'user/show'
    end
  end

  def edit
  end

  def update
    @tool.update(tool_params)
    redirect_to tool_path(@tool)
  end

  def destroy
    @tool.destroy
    redirect_to tools_path
  end

  private

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:name, :description, :user_id, :photo)
  end
end
