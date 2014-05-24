class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_vars
  before_filter :update_sanitized_params, if: :devise_controller?

  def set_vars
    @users = User.all
  end

  def after_sign_in_path_for(resource_or_scope)
    root_path
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, 
                                                           :username,
                                                           :password,
                                                           :password_confirmation)}
  end
end
