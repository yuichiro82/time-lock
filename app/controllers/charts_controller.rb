# frozen_string_literal: true

class ChartsController < ApplicationController
  def index
    @user = User.all
    @chart = Chart.new
  end

  def create
    @chart = Chart.new(chart_params)
    if @chart.valid?
      @chart.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def chart_params
    params.require(:chart).permit(:task_id, :act_time, :datetime).merge(user_id: current_user.id)
  end
end
