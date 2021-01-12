# frozen_string_literal: true

class ChartsController < ApplicationController
  def index
    @user = User.all
  end
end
