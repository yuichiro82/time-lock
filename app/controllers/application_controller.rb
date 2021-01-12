# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :index
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name encrypted_password])
  end
end
