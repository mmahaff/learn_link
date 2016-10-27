class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:index, :show]

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :is_student, :email, :password, :location, :city, :state])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :is_student, :email, :password])
  end

  protect_from_forgery with: :exception

end
