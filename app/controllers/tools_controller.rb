class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    @tools = Tool.all
  end

  def show
  end

  def new
    @tool = Tool.new
  end

  def create
    @user = User.find(params[:user_id])
    @tool = Tool.new(tool_params)
    @tool.user = @user
    if @tool.save
      redirect_to user_path(@user)
    else
      render :template => 'user/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:name, :description)
  end
end
