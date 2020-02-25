class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:new, :create]

  def new
    # @reservation = Reservation.new
  end

  def create
    # @reservation = @tool.reservations.create(reservation_params)
    @reservation = @tool.reservations.new(reservation_params)
    @reservation.tool_id = @tool.id
    @reservation.user = current_user
    if @reservation.save
      redirect_to @tool
    else
      render :template => 'tool/show'
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :tool_id, :user_id)
  end

  def set_reservation
    @tool = Tool.find(params[:tool_id])
  end
end
