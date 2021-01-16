# frozen_string_literal: true

class ChartsController < ApplicationController
  before_action :set_chart, only: [:show,:edit, :update, :destroy]

  def index
    @user = User.all
    @chart = Chart.new
  end

  def new
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
  end

  def edit
    @chart = Chart.find(params[:id])

  end

  def update
    @chart = Chart.find(params[:id])
    @chart.update(chart_params)
    redirect_to root_path
  end

  def destroy
    @chart = Chart.find(params[:id])
    @chart.destroy
    redirect_to root_path
  end

  private

  def set_chart
    @chart = Chart.where(user_id: current_user.id) 
  end

  def chart_params
    params.require(:chart).permit(:task_id, :act_time, :datetime).merge(user_id: current_user.id)
  end
end
