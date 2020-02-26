class ReservationsController < ApplicationController
  before_action :set_tool, only: [:new, :create]

  def new
    # @reservation = Reservation.new
  end

  def create
    # @reservation = @tool.reservations.create(reservation_params)
    @reservation = Reservation.new(reservation_params)
    @reservation.tool = @tool
    @reservation.user = current_user
    if @reservation.save
      @tool.booked = true
      @tool.save
      redirect_to @tool

    else
      render :template => 'tool/show'
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end
end
