class ReservationsController < ApplicationController
  before_action :set_tool, only: [:new, :create]


  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.tool = @tool
    authorize @reservation
    @reservation.user = current_user

    if @reservation.save
      @tool.booked = true
      @tool.save
      redirect_to @reservation
      # render :template => 'reservations/show'
    else
      render 'tool/show'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    # raise
    authorize @reservation
  end


  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end
end
