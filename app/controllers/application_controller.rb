class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :email, :password]) #añadidos un monton, un poco porque si XD
  end
end
