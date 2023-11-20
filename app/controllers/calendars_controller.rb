class CalendarsController < ApplicationController
  def show
    @days = Day.all
    @calendar = Calendar.find_by_id(params[:id])
  end

  def new
    @calendar = Calendar.new
    @calendar.user = current_user
  end

  def create
    @calendar = Calendar.new(calendar_params)
    @calendar.user = current_user
    if @calendar.save
      redirect_to calendar_path(@calendar)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def calendar_params
    params.require(:calendar).permit(:name)
  end
end
