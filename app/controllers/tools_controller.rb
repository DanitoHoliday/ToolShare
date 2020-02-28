class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :show ]
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @tools = policy_scope(Tool).where("name ILIKE ?", "%#{params[:query]}%")
    else
      @tools = policy_scope(Tool)
    end

    users = @tools.map { |tool| tool.user}
    @markers = users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url('favicon.ico')
      }
    end
  end

  def show
    @reservation = Reservation.new
    authorize @tool
    # user = @tool.user
    # @markers = user(lat: user.latitude, lng: user.longitude)
  end

  def new
    @tool = Tool.new
    authorize @tool
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    # raise
    authorize @tool
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
