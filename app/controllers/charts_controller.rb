# frozen_string_literal: true

class ChartsController < ApplicationController
  before_action :set_chart, only: [:edit, :update, :destroy]

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

  def show
    @chart = Chart.where(user_id: current_user.id)
  end

  def edit
    @chart = Chart.where(user_id: current_user.id) 
  end

  def update
  end

  def destroy
  end

  private

  def set_chart
    @chart = Chart.where(id: params[:user_id])
  end

  def chart_params
    params.require(:chart).permit(:task_id, :act_time, :datetime).merge(user_id: current_user.id)
  end
end
